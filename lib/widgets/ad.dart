import 'package:flutter/material.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/Screens/market_details.dart';
import 'package:moove/models/admodel.dart';
import 'package:moove/shared/constant.dart';

// ignore: must_be_immutable
class Ad extends StatelessWidget {
  AdModel shop;
  Ad({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 347,
        width: double.infinity,
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 175,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: textColor3,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(shop.bg)),
                ),
              ),

              //
              const SizedBox(
                height: 17,
              ),
              Text(
                shop.name,
                style: const TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  const ImageIcon(
                    AssetImage(
                      'assets/images/location icon.png',
                    ),
                    size: 18,
                    color: textColor40,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    shop.location,
                    style: const TextStyle(
                        color: textColor40,
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 39,
                      width: 160,
                      decoration: BoxDecoration(
                          color: primarycolor10,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                          onPressed: (() {
                            Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const MarketDetails()));
                          }),
                          child: const Text(
                            'more details',
                            style: TextStyle(
                                color: primarycolor100,
                                fontFamily: 'Mabry-Pro',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 39.0,
                      width: 160,
                      decoration: BoxDecoration(
                        color: primarycolor100,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                         child: const Text(
                            'Shop from Farm',
                            style: TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: background,
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                      color: background,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )
                                    ),
                                    height: 366,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(26, 30, 26, 20),
                                      child: Column(
                                        children: [
                                           const SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: Image(image: 
                                            AssetImage('assets/images/whatsapp.png')),
                                          ),
                                          const SizedBox(height: 20,),

                                          //
                                         const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            child: Text(
                                              'You are about to shop  with this seller via whatsapp',
                                              style: TextStyle(
                                                fontFamily: 'mabry-Pro',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4,
                                              ),
                                              textAlign: TextAlign.center,
                                              ),
                                          ),
                                          SizedBox(height: 40,),

                                          //
                                          Container(
                                            height: 50,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: primarycolor100,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: TextButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text(
                                                'Connnect with seller',
                                                style: TextStyle(
                                                  color: background,
                                                  fontFamily: 'Mabry-Pro',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500
                                                ),
                                                ),
                                              onPressed: (() {
                                                Navigator.pop(context, 
                                                MaterialPageRoute(builder: (context) =>  const Home()));
                                              }),
                                              ),
                                          ),
                                         const SizedBox(height: 18,),
                                          Container(
                                            height: 50,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: maincolor,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: TextButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  color: error100,
                                                  fontFamily: 'Mabry-Pro',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500
                                                ),
                                                ),
                                              onPressed: (() {
                                                Navigator.pop(context, 
                                                MaterialPageRoute(builder: (context) =>  Home()));
                                              }),
                                              ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                         
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
