import 'package:flutter/material.dart';
import 'package:moove/Screens/otp.dart';
import 'package:moove/Screens/profile.dart';
import 'package:moove/shared/constant.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

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
                    context, MaterialPageRoute(builder: (context) => const Profile()));
              },
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Edit profile',
          style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: textColor100),
        ),
      ),
       body: Padding(padding:
        EdgeInsets.symmetric(horizontal: 18),
        child:Column(
          children: [
            SizedBox(height: 45,),

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
                     height: 30,
                     width: 30,
                     child: Image.asset('assets/images/edit.png'))
                 ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            //

           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Username',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
                ),
              SizedBox(height: 6,),
              TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: textColor100,
                  autofillHints: const [AutofillHints.email],
                  autofocus: false,
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
                    filled: false,
                    contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
                    hintText: 'Agbama',
                    hintStyle: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: textColor100),
                  ),
                  ),
                  const SizedBox(height: 35,),
                  const Text(
                'Email address',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
                ),
              const SizedBox(height: 6,),
              TextFormField(
                enabled: false,
                  keyboardType: TextInputType.name,
                  cursorColor: textColor100,
                  autofillHints: const [AutofillHints.email],
                  autofocus: false,
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
                    filled: false,
                    contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
                    hintText: 'ulimhukaakem@gmail.com',
                    hintStyle: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: textColor100),
                  ),
                  ),
                
            ],
           ),
           Spacer(),
           Container(
                decoration: BoxDecoration(
                    color: primarycolor100,
                    borderRadius: BorderRadius.circular(30)),
                height: 55,
                width: double.infinity,
                child: TextButton(
                    onPressed: ()  {
                       {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Profile())));
                      }
                    },
                    child: Text(
                      'Save Changes',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: background),
                    )),
              ),
              const SizedBox(
                height: 40,
              ) 
          ],
        )
        ), 
    );
  }
}
