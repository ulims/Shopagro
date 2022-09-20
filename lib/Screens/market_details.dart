import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/Screens/products.dart';
import 'package:moove/models/product_model.dart';
import 'package:moove/shared/constant.dart';

class MarketDetails extends StatefulWidget {
  const MarketDetails({Key? key}) : super(key: key);

  @override
  State<MarketDetails> createState() => _MarketDetailsState();
}

class _MarketDetailsState extends State<MarketDetails> {
  List<Productclass> productsitems = [
    Productclass(
      name: 'Ekomork Fish', 
      price: 'N5,000',
      image: 'assets/images/product_image.png'
      ),
     Productclass(
      name: 'Tilipia Fish', 
      price: 'N3,000',
      image: 'assets/images/frame 2.png'
      ),
      Productclass(
      name: 'Badana Fish', 
      price: 'N7,000',
      image: 'assets/images/frame 1.png'
      ),
     Productclass(
      name: 'Ekomork Fish', 
      price: 'N5,000',
      image: 'assets/images/product_image.png'
      ),
      Productclass(
      name: 'Ekomork Fish', 
      price: 'N5,000',
      image: 'assets/images/product_image.png'
      ),
     Productclass(
      name: 'Ekomork Fish', 
      price: 'N5,000',
      image: 'assets/images/product_image.png'
      ),
      
     
  ];

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
              icon: const ImageIcon(
                AssetImage('assets/images/Shape.png'),
                size: 23,
                color: textColor100,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 93,
                      width: 93,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/circle.png')),
                          color: primarycolor100,
                          borderRadius: BorderRadius.circular(100),
                          ),
                          
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ekaete Fish Farms',
                          style: TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: textColor100),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: textColor100,
                              ),
                              children: [
                                TextSpan(
                                  text: '4',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                    text: 'products',
                                    style: TextStyle(color: textColor40))
                              ]),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                
                        //
                        Container(
                          height: 38,
                          width: 104,
                          decoration: BoxDecoration(
                              color: primarycolor100,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Shop now',
                              style: TextStyle(
                                  fontFamily: 'Mabry-pro',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 16,),
                Text('''I sell the best fishes around calabar, i will deliver to your address on request''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor100,
                  height: 1.5,
                  fontFamily: 'Mabry-Pro',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
),
               const SizedBox(height: 30,),
               
               GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 18,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                

                children: [
                  ...productsitems.map((items) => Products( item: items)).toList(),
                ]   
               )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
