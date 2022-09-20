import 'package:flutter/material.dart';
import 'package:moove/Screens/profile.dart';
import 'package:moove/models/admodel.dart';
import 'package:moove/shared/constant.dart';
import 'package:moove/widgets/ad.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AdModel> adlist = [
    AdModel(
      bg: 'assets/images/image 1.png',
      name: 'Ekaete fish Farming',
      location: 'Marian Road, Calabar',
    ),
    AdModel(
      bg: 'assets/images/image 2.png',
      name: 'Remkpe Poultry Farms',
      location: 'Ekpo abasi, Calabar',
    ),
    AdModel(
      bg: 'assets/images/image 3.png',
      name: 'Edet Pig Farms',
      location: 'Spring Road, Calabar',
    ),
    AdModel(
      bg: 'assets/images/image 4.png',
      name: 'Virgo Snail Farms ',
      location: 'Ettagbor, Calabar',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 88,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            //
                            Text(
                              'Hi Agbama',
                              style: TextStyle(
                                  color: textColor100,
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Verified user',
                              style: TextStyle(
                                  color: textColor80,
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Profile())));
                            },
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ...adlist
                    .map((shop) => Ad(
                          shop: shop,
                        ))
                    .toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
