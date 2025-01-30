import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class AlatPengujianView extends StatelessWidget {
  const AlatPengujianView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> rapidTest = [
      {'title': 'Durante Test', 'img': 'mini-durante.png'},
      {'title': 'Perokside Test', 'img': 'mini-perokside.png'},
      {'title': 'Pork Detection Test', 'img': 'mini-pork detection.png'},
      {'title': 'Pestisida Test', 'img': 'mini-pestisida.png'},
      {'title': 'Clorine Test', 'img': 'mini-clorine.png'},
      {'title': 'Formaldehyde Test', 'img': 'mini-formaldehyde.png'},
      {'title': 'Boraks Test', 'img': 'mini-boraks.png'},
    ];

    final List<Map<String, dynamic>> labDKPP = [
      {'title': 'Milk Scan', 'img': 'dkpp-milk scan.png'},
      {'title': 'Residu Meter & PH Meter', 'img': 'dkpp-residu meter.png'},
      {'title': 'Spectrophotometer', 'img': 'dkpp-spectrophotometer.png'},
      {'title': 'Freshnesmeter', 'img': 'dkpp-freshnesmeter.png'},
      {'title': 'Grain Moisturemeter', 'img': 'dkpp-grain moisturemeter.png'},
      {'title': 'Reagen Spectro Cemaran Logam', 'img': 'dkpp-reagen.png'},
    ];

    final List<Map<String, dynamic>> labAkreditasi = [
      {'title': 'Vanquish UHPLC UV Detector', 'img': 'akreditasi-vanquish.png'},
      {'title': 'Aquity Arc UHPLC PDA DTC', 'img': 'akreditasi-acquity.png'},
      {'title': 'HPLC LC MS CHROMATOGRAPHY', 'img': 'akreditasi-hplc.png'},
      {
        'title': 'SPECTROPHOTOMETER ATOMIC',
        'img': 'akreditasi-spectrophotometer.png'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo-ikp-new.png',
              width: 100,
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: DrawerWidget(),
      body: ListView(
        // padding: EdgeInsets.only(0),
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Jenis alat pemeriksaan rapid test kit dan test lanjutan ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'ALAT PEMERIKSAAN RAPID TEST KIT DI MINI LAB FOOD SAFETY',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            shrinkWrap: true, // Membatasi ukuran GridView sesuai kontennya
            physics:
                NeverScrollableScrollPhysics(), // Nonaktifkan scroll GridView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Jumlah kolom
              crossAxisSpacing: 0, // Jarak antar kolom
              mainAxisSpacing: 0, // Jarak antar baris
            ),
            itemCount: rapidTest.length,
            itemBuilder: (context, index) {
              final item = rapidTest[index];
              return GestureDetector(
                onTap: () => _showDialog(context, item['title'], item['img']),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.lightBlue.shade100,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          child: Image.asset('assets/alat-${item['img']}'),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5, left: 8, right: 8),
                          width: double.maxFinite,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            '${item['title']}'.toUpperCase(),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'ALAT PEMERIKSAAN LANJUTAN DI LAB DKPP',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            shrinkWrap: true, // Membatasi ukuran GridView sesuai kontennya
            physics:
                NeverScrollableScrollPhysics(), // Nonaktifkan scroll GridView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Jumlah kolom
              crossAxisSpacing: 0, // Jarak antar kolom
              mainAxisSpacing: 0, // Jarak antar baris
            ),
            itemCount: labDKPP.length,
            itemBuilder: (context, index) {
              final item = labDKPP[index];
              return GestureDetector(
                onTap: () => _showDialog(context, item['title'], item['img']),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.lightBlue.shade100,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          child: Image.asset('assets/alat-${item['img']}'),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5, left: 8, right: 8),
                          width: double.maxFinite,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            '${item['title']}'.toUpperCase(),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'ALAT PEMERIKSAAN LANJUTAN DI LAB DKPP',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            shrinkWrap: true, // Membatasi ukuran GridView sesuai kontennya
            physics:
                NeverScrollableScrollPhysics(), // Nonaktifkan scroll GridView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Jumlah kolom
              crossAxisSpacing: 0, // Jarak antar kolom
              mainAxisSpacing: 0, // Jarak antar baris
            ),
            itemCount: labAkreditasi.length,
            itemBuilder: (context, index) {
              final item = labAkreditasi[index];
              return GestureDetector(
                onTap: () => _showDialog(context, item['title'], item['img']),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.lightBlue.shade100,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          child: Image.asset('assets/alat-${item['img']}'),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5, left: 8, right: 8),
                          width: double.maxFinite,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            '${item['title']}'.toUpperCase(),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            height: 430,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/alat-${imagePath}',
                  fit: BoxFit.contain,
                  height: 330,
                  width: double.infinity,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 8, right: 8),
                  // width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      border: Border.all(color: Colors.white)),
                  child: Text(
                    title.toUpperCase(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
