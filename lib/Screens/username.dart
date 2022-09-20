import 'package:flutter/material.dart';

import 'package:moove/Screens/loading.dart';
import 'package:moove/Screens/terms.dart';

import 'package:moove/shared/constant.dart';

class Username extends StatefulWidget {
  const Username({Key? key}) : super(key: key);

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  //
  final _formKey = GlobalKey<FormState>();
  String username = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      //wrapping bidy with a safe area
      body: SafeArea(
        //Giving the wrapped body a padding of 18 on horizontal side
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              //
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
                      children: const [
                        Text(
                          'Enter your Username',
                          style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: textColor100,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'What should our drivers call you, please tell us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: textColor60,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              //Creating a textform field with a form and textformfield widgets and using the global key to validate it
              Form(
                key: _formKey,
                child: TextFormField(
                  //initiating the validator key for input validation using ternary operator
                  validator: (val) =>
                      val!.isEmpty ? 'Enter a valid username' : null,
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                  keyboardType: TextInputType.name,
                  cursorColor: textColor100,
                  autofillHints: const [AutofillHints.email],
                  autofocus: true,
                  style: const TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: textColor100,
                  ),

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: primarycolor100,
                          width: 1.5,
                        )),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusColor: textColor100,
                    fillColor: background,
                    filled: true,
                    contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: textColor40),
                  ),
                ),
              ),


              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: username.length > 3 ? primarycolor100 : textColor3,
                    borderRadius: BorderRadius.circular(30)),
                height: 55,
                width: double.infinity,
                child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Terms())));
                      }
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: username.length > 3 ? background : textColor60),
                    )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
