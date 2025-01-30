import 'package:flutter/material.dart';
import 'package:ikp_mobile/utils/var_global.dart';

import 'package:ikp_mobile/views/tabel_pasar_detail.dart';

import '../widgets/drawer_widget.dart';

class TentangKamiView extends StatelessWidget {
  const TentangKamiView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> limitedData =
        VarGlobal.data_lokasi_pasar.sublist(0, 3);
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
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'Pendahuluan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Ruang lingkup dan target \nkeamanan pangan segar',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text('''
Kota Bandung terkenal dengan wisata kuliner, sebagai Ibu Kota Provinsi Jawa Barat berpenduduk 2,4 juta jiwa dengan luas wilayah 16.729,50 Ha adalah daerah pemasaran pangan segar terbesar di Jawa Barat, 95-96 % pangan segarnya didatangkan dari luar Wilayah Kota Bandung, sehingga membutuhkan pengawasan yang lebih intensif. \n
Permasalahan keamanan pangan segar di Kota Bandung disebabkan oleh banyaknya jumlah tempat penjualan pangan segar terdiri dari 60 pasar modern, 35 pasar tradisional, 368 Distributor dan Buruan Sae\n 
Dengan konsep pemeriksaan dari hulu ke hilir diharapkan pangan segar yang beredar di Kota Bandung terawasi semua, pangan segar yang masuk ke agen distributor akan diperiksa oleh petugas dari Dinas Ketahanan Pangan dan Pertanian, yang dijual di pasar akan diperiksa oleh petugas mini lab food safety pasar tradisional dan petugas fresh pasar modern yang telah dilatih oleh Dinas Ketahanan Pangan dan Pertanian, sedangkan yang dijual di warung dan pedagang keliling akan diperiksa oleh Ibu-Ibu PKK Pokja 3 di Kewilayahan yang juga telah dilatih oleh Dinas Ketahanan Pangan dan Pertanian.\n  
Pengawasan dan pemeriksaan keamanan pangan segar bukan tanggung jawab sepenuhnya Pemerintah, sudah waktunya melibatkan pelaku usaha dan masyarakat sehingga keamanan pangan segar yang dikonsumsi masyarakat lebih terjamin.

            '''),
          Text(
            'Alur Pemeriksaan Keamanan Pangan dan Input Laporan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 200,
            child: Image.asset('assets/tentang-kami.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lokasi pasar traditional, modern, dan distributor',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text("No")),
                DataColumn(label: Text("Kecamatan")),
                DataColumn(label: Text("Kelurahan")),
                DataColumn(label: Text("Jalan")),
                DataColumn(label: Text("Nama")),
              ],
              rows: limitedData
                  .map(
                    (entry) => DataRow(
                      cells: [
                        DataCell(Text(entry["No"] ?? "-")),
                        DataCell(Text(entry["Kecamatan"] ?? "-")),
                        DataCell(Text(entry["Kelurahan"] ?? "-")),
                        DataCell(Text(entry["Jalan"] ?? "-")),
                        DataCell(Text(entry["Nama"] ?? "-")),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LokasiPasarTabel(),
                      ));
                },
                child: Text(
                  'see more',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )),
        ],
      ),
    );
  }
}
