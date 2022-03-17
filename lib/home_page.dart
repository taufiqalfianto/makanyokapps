import 'package:flutter/material.dart';
import 'package:mobile/detail_page.dart';
import 'theme.dart';

//hom page
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: kgreycolor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 28,
                      // width: 10,
                      child: Image(
                        image: AssetImage(
                          'assets/icon_home.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Home',
                      style: whitetextstyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profilepage');
              },
              child: Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 28,
                      child: Image(
                        image: AssetImage('assets/icon_profile.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Profile',
                      style: whitetextstyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo Topiq',
                      style: blacktextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'Mau Makan Apa\nHari Ini',
                      style: blacktextstyle.copyWith(
                        fontSize: 22,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profilepage');
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: kredcolor,
                      ),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/profile_1.png'),
                      ),
                    ),
                    // child: Image.asset(
                    //   'assets/profile_1.png',
                    // ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          //search
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            child: TextField(
              cursorColor: kwhitecolor,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Cari Makanan',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: kblackcolor),
                ),
              ),
            ),
          ),
          //banner
          Container(
            padding: EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 316,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                //bullet
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kgreywhitecolor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kgreywhitecolor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kblackcolor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //listmenu
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 260,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 260,
                    width: 190,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 190,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Eybisi Salad Mix',
                                    style: blacktextstyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Mix vegetables inggridients',
                                    style: greytextstyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: light,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "USD 14",
                                    style: greytextstyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            height: 142,
                            width: 142,
                            child: Image.asset('assets/image_1.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 260,
                    width: 190,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 190,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Eybisi Salad Mix',
                                    style: blacktextstyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Mix vegetables inggridients',
                                    style: greytextstyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: light,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "USD 14",
                                    style: greytextstyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            height: 142,
                            width: 142,
                            child: Image.asset('assets/image_1.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 260,
                    width: 190,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 190,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Eybisi Salad Mix',
                                    style: blacktextstyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Mix vegetables inggridients',
                                    style: greytextstyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: light,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "USD 14",
                                    style: greytextstyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            height: 142,
                            width: 142,
                            child: Image.asset('assets/image_1.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 260,
                    width: 190,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 190,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Eybisi Salad Mix',
                                    style: blacktextstyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Mix vegetables inggridients',
                                    style: greytextstyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: light,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "USD 14",
                                    style: greytextstyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            height: 142,
                            width: 142,
                            child: Image.asset('assets/image_1.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
