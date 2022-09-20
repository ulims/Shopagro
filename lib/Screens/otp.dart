import 'package:flutter/material.dart';
import 'package:moove/Screens/username.dart';
import 'package:moove/shared/constant.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  final _formKey = GlobalKey<FormState>();
  String code = '';

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
              const SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(
                    height: 15,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ],
              ),
              const SizedBox(height: 30,),

              //
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                              
                      children: const [
                        Text(
                          'Enter OTP code',
                          style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: textColor100,
                          ),
                          ),
                          SizedBox(height: 10,),
                  
                           Text(
                          'A 4 digit code was sent to your mobile number',
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
                        val!.isEmpty ? 'Enter 4 digit code' : null,
                    onChanged: (val) {
                      setState(() => code = val);
                    },
                    keyboardType: TextInputType.number,
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
                      hintText: '0000',
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
                    color: code.length > 3 ? primarycolor100 : textColor3,
                    borderRadius: BorderRadius.circular(30)),
                height: 55,
                width: double.infinity,
                child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Username())));
                      }
                    },
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: code.length > 3 ? background : textColor60),
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
