import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 200, bottom: 20, left: 20, right: 20),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          children: [
            Container(
                child: const Column(
              children: [
                Image(image: AssetImage("asset/img/logopandu.png")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pandhu',
                  style: TextStyle(
                    color: Color(0xFFF6643C),
                    fontSize: 32,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            )),
          ],
        ),
        // Powered by Google dan BMKG logos
        Column(
          children: [
            Text(
              'Powered by',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/img/gmap.png', // ganti dengan lokasi file logo Google Anda
                  height: 30,
                ),
                SizedBox(width: 10),
                Image.asset(
                  'asset/img/bmkg.png', // ganti dengan lokasi file logo BMKG Anda
                  height: 30,
                ),
              ],
            ),
          ],
        )
      ]),
    ));
  }
}
