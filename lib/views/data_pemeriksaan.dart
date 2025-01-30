import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class DataPemeriksaanView extends StatelessWidget {
  const DataPemeriksaanView({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Data Pemeriksaan Hasil Pangan Segar 2018 - 2024',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DataTable(
                    columns: [
                      DataColumn(
                          label: Text(
                        'NO',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        'JENIS PRODUK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2019',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2020',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2021',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2022',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2023',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '2024',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Beras')),
                        DataCell(Text('162')),
                        DataCell(Text('457')),
                        DataCell(Text('295')),
                        DataCell(Text('358')),
                        DataCell(Text('519')),
                        DataCell(Text('283')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('Sayuran')),
                        DataCell(Text('1470')),
                        DataCell(Text('934')),
                        DataCell(Text('1196')),
                        DataCell(Text('1198')),
                        DataCell(Text('1267')),
                        DataCell(Text('1106')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('3')),
                        DataCell(Text('Buah-Buahan')),
                        DataCell(Text('1340')),
                        DataCell(Text('743')),
                        DataCell(Text('1192')),
                        DataCell(Text('537')),
                        DataCell(Text('0')),
                        DataCell(Text('446')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('4')),
                        DataCell(Text('Palawija')),
                        DataCell(Text('176')),
                        DataCell(Text('100')),
                        DataCell(Text('100')),
                        DataCell(Text('25')),
                        DataCell(Text('357')),
                        DataCell(Text('64')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Kacang-Kacangan')),
                        DataCell(Text('100')),
                        DataCell(Text('97')),
                        DataCell(Text('45')),
                        DataCell(Text('102')),
                        DataCell(Text('179')),
                        DataCell(Text('148')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('6')),
                        DataCell(Text('Rempah-Rempah')),
                        DataCell(Text('150')),
                        DataCell(Text('154')),
                        DataCell(Text('201')),
                        DataCell(Text('98')),
                        DataCell(Text('487')),
                        DataCell(Text('132')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('7')),
                        DataCell(Text('Telur')),
                        DataCell(Text('669')),
                        DataCell(Text('339')),
                        DataCell(Text('276')),
                        DataCell(Text('175')),
                        DataCell(Text('260')),
                        DataCell(Text('144')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('8')),
                        DataCell(Text('Daging')),
                        DataCell(Text('2173')),
                        DataCell(Text('1848')),
                        DataCell(Text('2369')),
                        DataCell(Text('1799')),
                        DataCell(Text('2578')),
                        DataCell(Text('1666')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('9')),
                        DataCell(Text('Susu Segar')),
                        DataCell(Text('485')),
                        DataCell(Text('369')),
                        DataCell(Text('287')),
                        DataCell(Text('184')),
                        DataCell(Text('168')),
                        DataCell(Text('113')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('10')),
                        DataCell(Text('Ikan Segar')),
                        DataCell(Text('1989')),
                        DataCell(Text('1758')),
                        DataCell(Text('2085')),
                        DataCell(Text('1288')),
                        DataCell(Text('1547')),
                        DataCell(Text('1046')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('11')),
                        DataCell(Text('Ikan Asin')),
                        DataCell(Text('1064')),
                        DataCell(Text('811')),
                        DataCell(Text('1017')),
                        DataCell(Text('771')),
                        DataCell(Text('1342')),
                        DataCell(Text('475')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('')),
                        DataCell(Text(
                          'TOTAL',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '9878',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '7610',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '9063',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '6436',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '9940',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataCell(Text(
                          '5673',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
