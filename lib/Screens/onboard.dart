import 'package:flutter/material.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/Screens/login.dart';
import 'package:moove/Screens/nav.dart';
import 'package:moove/shared/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

//state objects
class _OnboardState extends State<Onboard> {
  _storeOnboardInfo() async {
    //print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    //print(prefs.getInt('onBoard'));
  }

  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      //wrapping this entire body with a scrollable widget
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/image.png'),

            const SizedBox(
              height: 28,
            ),

            //wrapping the Text widgets with a padding widgets
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'The Fastest way to shop agro products',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    height: 1.3
                    ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            //wrapping the Text widgets with a padding widgets
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At blandit at velit semper. Ut.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    ),
              ),
            ),

            const SizedBox(height: 55,),
            //creating a rounded button using padding and container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primarycolor100),
                child: TextButton(onPressed: (() async{
                  await _storeOnboardInfo();
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      // ignore: prefer_const_constructors
                                      builder: (context) => Login()));
                }),
                child: Text(
                  'Access with account',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: background,
                  ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: maincolor),
                child: TextButton(onPressed: (() async{
                  await _storeOnboardInfo();
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      // ignore: prefer_const_constructors
                                      builder: (context) => Nav()));
                }),
                child: Text(
                  'Access instanly',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: textColor100,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
