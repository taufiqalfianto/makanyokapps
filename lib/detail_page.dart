import 'package:flutter/material.dart';
import 'package:mobile/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homepage');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: kblackcolor,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 300,
                      margin: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pecel\nSayur Enak',
                                style: blacktextstyle.copyWith(
                                  fontSize: 26,
                                  fontWeight: bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Harga\nRp. 11k',
                                style: blacktextstyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 200,
                      child: Container(
                        height: 300,
                        child: Image.asset('assets/image_2.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Deskripsi',
                                style: blacktextstyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: Colors.amberAccent,
                                      fontSize: 18,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          'This Italian salad is full of all the right flavors and textures: crisp lettuce, crunchy garlic croutons, and zingy pepperoncini. It`s covered in punchy, herby Italian vinaigrette that makes the flavors sing! It can play sidekick to just about anything.',
                          // overflow: TextOverflow.ellipsis,
                          style: blacktextstyle.copyWith(
                            fontSize: 16,
                            // fontWeight: reguler,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 76,
                              child: Image.asset('assets/satu.png'),
                            ),
                            Container(
                              height: 76,
                              child: Image.asset('assets/image_3.png'),
                            ),
                            Container(
                              height: 76,
                              child: Image.asset('assets/image_4.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
