import 'package:flutter/material.dart';
import 'theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -200,
            right: -50,
            left: -50,
            child: Column(
              children: [
                Image.asset('assets/image_1.png'),
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Maem yok',
                  style: blacktextstyle.copyWith(
                    fontSize: 22,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 100,
                  child: Text(
                    'Maem yok adalah aplikasi sederhana\nuntuk menampilkan daftar makanan dan\ndeskripsinya',
                    style: blacktextstyle.copyWith(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 134,
                ),
                Container(
                  padding: EdgeInsets.only(top: 8),
                  height: 61,
                  width: 215,
                  decoration: BoxDecoration(
                    color: kblackcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Positioned(
                        top: 34,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/homepage');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mulai  ',
                                style: whitetextstyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
