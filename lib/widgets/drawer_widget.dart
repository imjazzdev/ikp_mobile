import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikp_mobile/views/alat_pengujian.dart';
import 'package:ikp_mobile/views/data_pemeriksaan.dart';
import 'package:ikp_mobile/views/home.dart';
import 'package:ikp_mobile/views/kritik_saran.dart';
import 'package:ikp_mobile/views/login.dart';
import 'package:ikp_mobile/views/tentang_kami.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  // color: Colors.grey.shade100,

                  ),
              child: Center(
                child: Image.asset(
                  'assets/logo-ikp-mobile-new.png',
                  height: 150,
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.info_circle),
            title: Text('Tentang kami'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TentangKamiView(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.graph_square_fill),
            title: Text('Data pemeriksaan'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataPemeriksaanView(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.gear_big),
            title: Text('Alat pengujian'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlatPengujianView(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback_rounded),
            title: Text('Kritik & saran'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KritikSaranView(),
                  ));
            },
          ),
          // Divider(),
          ListTile(
            leading: Icon(
              Icons.login_rounded,
              size: 25,
              color: Colors.green.shade700,
            ),
            title: Text(
              'Login',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
