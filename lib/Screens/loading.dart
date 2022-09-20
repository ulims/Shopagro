import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:moove/shared/constant.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primarycolor100,
      body: Center(
        child: SpinKitFoldingCube(
          color: background,
          size: 80,
          )
        ),
    );
  }
}
