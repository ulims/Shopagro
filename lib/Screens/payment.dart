import 'package:flutter/material.dart';
import 'package:moove/Screens/profile.dart';
import 'package:moove/shared/constant.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Profile()));
              },
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Payment method',
          style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: textColor100),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 190,
              width: 180,
              child: Image.asset('assets/images/wallet.png')),
              const SizedBox(height: 0,),
              const Text(
                'No payment method yet',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 20,
                  color: textColor100,
                  fontWeight: FontWeight.w500
                  ),
                ),
                 const SizedBox(height: 5,),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30),
                   child: Text(
                'We are currently working on this, please be patient while we work on this',
                style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 16,
                    color: textColor60,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                ),
                 ),
          ],
        ),
      ),
    );
  }
}
