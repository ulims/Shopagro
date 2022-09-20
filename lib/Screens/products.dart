import 'package:flutter/material.dart';
import 'package:moove/models/product_model.dart';
import 'package:moove/shared/constant.dart';

class Products extends StatelessWidget {
  Productclass item;
  Products({Key? Key,required this.item}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          
          image: AssetImage(item.image,
          ),
          colorFilter: ColorFilter.mode(textColor100.withOpacity(0.5),
          BlendMode.darken
          )
          ),
      ),
      height: 196,
      width: 160,
      child: Stack(
        children: [
          
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: background),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    item.price,
                    style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: background),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
