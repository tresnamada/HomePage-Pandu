// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:f/widgets/artikel.dart';
import 'package:f/widgets/kotakgempa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Stack(
        children: [
          ListView(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: const Column(
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("asset/img/location.png"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi Anda,",
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Semarang, Jawa Tengah',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Cari informasi gempa",
                      contentPadding: EdgeInsets.zero,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 382,
                  height: 201,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6643C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x99F6643C),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Row(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gempa Sedang Terjadi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Hati-hati gempa sedang terjadi\ndi wilayah Kota Semarang. \nBerpotensi tsunami dari pantai\nMarina.',
                                  style: TextStyle(
                                      color: Color(0xFFFBC1B1),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Text(
                                  'Selengkapnya',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0.11,
                                  ),
                                ),
                              ]),
                          Container(child: Image.asset("asset/img/gempe.png")),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gempa Terkini',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Lebih Detail',
                            style: TextStyle(
                              color: Color(0xFF3BABF6),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
                      child: Container(
                        height: 230,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Kotakgempa(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Kotakgempa(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Kotakgempa()
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            'Gempa Sekitar Anda 🚨',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
                      child: Container(
                        height: 230,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Kotakgempa(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Kotakgempa(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Kotakgempa()
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Artikel 📑',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 290,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                              Artikel(),
                              SizedBox(
                                width: 12,
                              ),
                              Artikel(),
                              SizedBox(
                                width: 12,
                              ),
                              Artikel()],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Expanded(
                    child: Container(
                      // width: 382,
                      height: 201,
                      decoration: ShapeDecoration(
                          color: Color(0xFF4EB8FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x994FB8FF),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Informasi Bantuan Gempa',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 210,
                                        height: 62,
                                        child: Text(
                                          'Hubungi BMKG atau BPBD kota Anda untuk mendapatkan bantuan dan informasi yang lebih terperinci',
                                          style: TextStyle(
                                            color: Color(0xFFB9E3FF),
                                            fontSize: 14,
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 35,
                                      ),
                                      Text(
                                        'Hubungi',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                            Positioned(
                              left: 220,
                              top: 15,
                              child: Row(
                                children: [
                                  Container(
                                    width: 142,
                                    height: 142,
                                    child: Image.asset(
                                      "asset/img/bell.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Expanded(
                    child: Container(
                      height: 158,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 20, 0, 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                      children: [
                                          TextSpan(
                                              text: 'Menemukan Kesalahan \ndi Aplikasi ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                              ),
                                          ),
                                          TextSpan(
                                              text: 'Pandhu?',
                                              style: TextStyle(
                                                  color: Color(0xFFF6643C),
                                                  fontSize: 20,
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                              ),
                                          ),
                                      ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text.rich(
                                    TextSpan(
                                        children: [
                                            TextSpan(
                                                text: 'Hubungi tim kami melalui ',
                                                style: TextStyle(
                                                    color: Color(0xFF636363),
                                                    fontSize: 14,
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w400,
                                                ),
                                            ),
                                            TextSpan(
                                                text: 'email \n',
                                                style: TextStyle(
                                                    color: Color(0xFF636363),
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.italic,
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w400,
                                                ),
                                            ),
                                            TextSpan(
                                                text: 'sipanduofficial@gmail.com',
                                                style: TextStyle(
                                                    color: Color(0xFF636363),
                                                    fontSize: 14,
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w400,
                                                ),
                                            ),
                                        ],
                                    ),
                                )
                              ],
                            ),
                            Image.asset("asset/img/checklist.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Text(
                    'Powered by',
                    style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/img/google-logo.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset("asset/img/bmkg-logo.png"),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 151,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Expanded(
              child: Container(
                height: 82,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 68),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              "asset/img/home.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            'Beranda',
                            style: TextStyle(
                              color: Color(0xFFF6643C),
                              fontSize: 12,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              "asset/img/clock.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            'Riwayat',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 12,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color : Color(0xFFF6643C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  ),
                              ),
                              child: 
                              Container(
                                width: 20,
                                height: 20,
                                child: Image.asset("asset/img/chat.png",
                                
                                )
                              ),
                            ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'SiPandhu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                  ),
                  ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
