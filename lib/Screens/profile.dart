import 'package:flutter/material.dart';
import 'package:moove/Screens/cart.dart';
import 'package:moove/Screens/create_market.dart';
import 'package:moove/Screens/edit_profile.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/Screens/login.dart';
import 'package:moove/Screens/payment.dart';
import 'package:moove/shared/constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: maincolor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const ImageIcon(AssetImage('assets/images/Shape.png'),
              size: 23,
              color: textColor100,
              ),
              onPressed: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => const Home()));
              },
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Profile & Settings',
          style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: textColor100),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 45,),

            //
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                 children: [
                   const CircleAvatar(
                     radius: 50,
                     backgroundColor: primarycolor100,
                     backgroundImage: AssetImage(
                       'assets/images/profilepics.png',
                       ),
                   ),
                   SizedBox(
                     height: 25,
                     width: 25,
                     child: Image.asset('assets/images/edit.png'))
                 ],
                ),
              ],
            ),
            const SizedBox(height: 40,),
            
            //
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                     MaterialPageRoute(
                      builder: (context) => const EditProfile()));
              },
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Edit personal info',
                              style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textColor100
                              ),
                              ),
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              ImageIcon(AssetImage('assets/images/Arrow 1.png')),
                                    ],
                                  )
                                  ],
                      ),
                      ),
              ),
            ),
            const SizedBox(height: 10,),

            //
            
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                     MaterialPageRoute(
                      builder: (context) => const Payment()));
              },
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Payment method',
                              style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textColor100
                              ),
                              ),
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              ImageIcon(AssetImage('assets/images/Arrow 1.png')),
                                    ],
                                  )
                                  ],
                      ),
                      ),
              ),
            ),
            const SizedBox(height: 10,),

            //
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                     MaterialPageRoute(
                      builder: (context) => const CreateMarket()));
              },
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Create a market',
                              style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textColor100
                              ),
                              ),
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              ImageIcon(AssetImage('assets/images/Arrow 1.png')),
                                    ],
                                  )
                                  ],
                      ),
                      ),
              ),
            ),
            const SizedBox(height: 10,),

            //
            Container(
              height: 53,
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'FAQ and Help',
                            style: TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: textColor100
                            ),
                            ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const[
                            ImageIcon(AssetImage('assets/images/Arrow 1.png')),
                                  ],
                                )
                                ],
                    ),
                    ),
            ),
            const SizedBox(height: 10,),

            //
            Container(
              height: 53,
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: error100,
                            ),
                            ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const[
                            ImageIcon(AssetImage('assets/images/Arrow 1.png')),
                                  ],
                                )
                                ],
                    ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
