import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ikp_mobile/widgets/carousel_banner.dart';
import 'package:ikp_mobile/widgets/drawer_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CarouselBanner(),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/logo-dkpp-removebg.png',
                          height: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'SELAMAT DATANG DI APLIKASI',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/logo-ikp-new.png',
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border(top: BorderSide(color: Colors.grey.shade300))),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
                  child: Column(
                    children: [
                      Text('Kontak kami'),
                      Text('Jl Arjuna No. 45, Bandung'),
                      Text('022-6015-102'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/instagram.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('@bi_npangan'),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/internet.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('dkpp@bandung.go.id'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/facebook.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('@bi_npangan'),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(Icons.email),
                                SizedBox(
                                  width: 4,
                                ),
                                Flexible(
                                  child: Text(
                                    'keamananpanganbdg@gmail.com',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
