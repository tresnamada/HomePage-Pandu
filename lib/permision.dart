import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Permision extends StatelessWidget {
  const Permision({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perizinan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Untuk mendapatkan pengalaman yang lebih baik dalam menggunakan aplikasi, Pandhu menyarankan Anda untuk:',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 382,
                  height: 317,
                  decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFFECECEC), Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFECECEC),
                        ),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Image.asset(
                                "asset/img/3dlocation.png",
                              ),
                            ),
                            Text(
                              'Izin Lokasi',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          "asset/img/folder.png",
                          width: 133,
                          height: 159,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Column(
                  children: [
                    Container(
                      width: 382,
                      height: 52,
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      decoration: ShapeDecoration(
                          color: Color(0xFFF6643C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        'Setuju',
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
              ],
            ),
          ),
        ));
  }
}
