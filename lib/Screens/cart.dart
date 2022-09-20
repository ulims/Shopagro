import 'package:flutter/material.dart';
import 'package:moove/shared/constant.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(
            color: textColor100,
            fontFamily: 'Mabry-Pro',
            fontSize: 24,
            fontWeight: FontWeight.w900
          ),
          ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: maincolor,
        elevation: 0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 170,
                width: 155,
                child: Image.asset('assets/images/cart.png')),
                SizedBox(height: 5,),
                Text(
                  'No item on cart yet',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 20,
                    color: textColor100,
                    fontWeight: FontWeight.w500
                    
                  ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
