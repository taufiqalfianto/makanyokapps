import 'package:flutter/material.dart';
import 'package:mobile/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
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
                      // width: 10,
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
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 85,
                bottom: 65,
              ),
              child: Container(
                height: 135,
                width: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: kredcolor,
                    width: 3,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile_1.png',
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Topiq Alpianto",
              style: blacktextstyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email_outlined,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'abc@gmail.com',
                      style: blacktextstyle.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_callback_outlined,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      '08129348384',
                      style: blacktextstyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Seorang lelaki yang berasal dari Magelang',
              textAlign: TextAlign.center,
              style: blacktextstyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
