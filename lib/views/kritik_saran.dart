import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class KritikSaranView extends StatefulWidget {
  const KritikSaranView({super.key});

  @override
  State<KritikSaranView> createState() => _KritikSaranViewState();
}

class _KritikSaranViewState extends State<KritikSaranView> {
  int selectedStar = 0;
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Kritik & saran",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              // controller: nameController,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Nama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              // controller: noTelpController,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "No Telp",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Pick a rate *",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                5,
                (index) => IconButton(
                  onPressed: () {
                    setState(() {
                      selectedStar = index + 1;
                    });
                  },
                  icon: Icon(
                    Icons.star,
                    color: (index < selectedStar) ? Colors.amber : Colors.grey,
                    size: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Kritik",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextField(
              // controller: feedbackController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Write your kritik here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Saran",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextField(
              // controller: feedbackController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Write your saran here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 8), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.scale,
                    dialogType: DialogType.success,
                    title: 'Terimakasih atas tanggapan mu',
                    btnOkOnPress: () {
                      // Navigator.pop(context);
                    },
                  ).show();
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
