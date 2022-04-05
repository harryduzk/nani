// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Center(
                child: Text(" album name",
                    style: GoogleFonts.lora()
                        .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.cyanAccent),
            ),
            Container(
              height: 70,
              child: Column(
                children: [
                  Text(
                    " song's name",
                    style: GoogleFonts.pacifico().copyWith(fontSize: 25),
                  ),
                  Text(
                    " artist name",
                    style: GoogleFonts.damion().copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: LinearProgressIndicator(
                value: 0.7,
                color: Colors.greenAccent[900],
                backgroundColor: Colors.greenAccent[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("00:30"),
                  Icon(Icons.fast_rewind),
                  Icon(
                    Icons.pause_circle_outline,
                    size: 50,
                  ),
                  Icon(Icons.fast_forward),
                  Text("05:30"),
                ],
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shuffle),
                  SizedBox(width: 20),
                  Icon(Icons.music_note_outlined),
                  SizedBox(width: 20),
                  Icon(Icons.playlist_play),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Trang2(),
                  ),
                );
              },
              child: const Text('Trang 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Trang2 extends StatelessWidget {
  const Trang2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
