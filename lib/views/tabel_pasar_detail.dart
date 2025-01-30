import 'package:flutter/material.dart';

import '../utils/var_global.dart';

class LokasiPasarTabel extends StatelessWidget {
  const LokasiPasarTabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text("No")),
                DataColumn(label: Text("Kecamatan")),
                DataColumn(label: Text("Kelurahan")),
                DataColumn(label: Text("Jalan")),
                DataColumn(label: Text("Nama")),
              ],
              rows: VarGlobal.data_lokasi_pasar
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
        ),
      ),
    );
  }
}
