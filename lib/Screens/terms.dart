import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/Screens/nav.dart';
import 'package:moove/shared/constant.dart';
import 'package:moove/widgets/ad.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      //
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  height: 15,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            //
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Accept our Terms',
                        style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: textColor100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //Using Textspan to highlight text in lines of text,
                      
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                fontFamily: 'Mabry-pro',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: textColor60,
                                height: 1.7,
                              ),
                              children: [
                            const TextSpan(
                                text:
                                    'By clicking the active buttton below, you happily accept to our'),
                           const WidgetSpan(child: SizedBox(width: 5)),
                            TextSpan(
                                text: 'Terms,Conditions',
                                style: const TextStyle(
                                  //decoration: TextDecoration.underline,
                                  color: primarycolor100),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //print('link');
                                  }),
                            const WidgetSpan(child: SizedBox(width: 5)),
                            const TextSpan(text: 'and'),
                           const  WidgetSpan(child: SizedBox(width: 5)),
                            TextSpan(
                                text: 'Privacy Policy.',
                                style: const TextStyle(
                                  //decoration: TextDecoration.underline,
                                  color: primarycolor100),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //print('Hello');
                                  }
                                ),
                          ]
                          ),
                          ),
                    ],
                  ),
                ),
              ],
            ),

            //
            const SizedBox(height: 70,),
            Image.asset('assets/images/accept.png',
            height: 240,
            width: 221,
            ),
            
            //
            const Spacer(),
            
            //
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primarycolor100,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Nav())));
                }, 
              child: const Text(
                'Accept',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: background,
                ),
                ),
                ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      )),
    );
  }
}
