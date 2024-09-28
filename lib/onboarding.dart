// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "asset/img/logopandu.png",
              width: 14.88,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Pandhu',
                style: TextStyle(
                  color: Color(0xFFF6643C),
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 294,
            height: 196,
            child: Image(image: AssetImage("asset/img/people.png")),
          ),
          Text(
            'Siaga Gempa,\nLindungi Masa Bersama',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Pandhu memberi Anda peringatan dini gempa untuk memastikan keselamatan Anda dan keluarga. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF666666),
              fontSize: 16,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Container(
            width: 382,
            height: 52,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            decoration: ShapeDecoration(
                color: Color(0xFFF6643C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: Text(
              'Lanjutkan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 382,
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Dengan melanjutkan, Anda setuju dengan \n',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Kebijikan privasi  ',
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                      text: '& ',
                      style: TextStyle(
                        color: Color(0xFF666666),
                      )),
                  TextSpan(
                      text: 'Syarat ketentuan',
                      style: TextStyle(color: Colors.orange))
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
