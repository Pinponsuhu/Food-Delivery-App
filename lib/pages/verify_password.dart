import 'package:flutter/material.dart';
import 'package:food/styles/form_label.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifyPassword extends StatefulWidget {
  const VerifyPassword({Key? key}) : super(key: key);

  @override
  State<VerifyPassword> createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 48),
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0XFF1E1E2E)
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Verification",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "We have sent a code to your email",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "example@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          child: Image(
                              image: AssetImage("assets/top_eclispe.png"))),
                      Positioned(
                          right: 0,
                          child: Image(
                              height: 300,
                              image: AssetImage("assets/lines.png"))
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "CODE",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Color(0XFF32343E)
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: null,
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero
                                        ),
                                        child: Text(
                                          "Resend",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline,
                                            color: Color(0XFF32343E),
                                          ),
                                        )),
                                    Text("in.50sec"),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            VerificationCode(
                              onCompleted: (String value){

                              }, onEditing: (value){

                            },
                              fillColor: Color(0XFFF0F5FA),
                              keyboardType: TextInputType.number,
                              length: 4,
                              itemSize: 60,
                              digitsOnly: true,
                              padding: EdgeInsets.all(8),
                              underlineWidth: 0,
                              underlineColor: Colors.white,
                              underlineUnfocusedColor: Colors.white,
                              cursorColor:
                              Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            TextButton(
                                onPressed: null,
                                style: TextButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    minimumSize: Size(double.infinity, 58),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    )
                                ),
                                child:
                                Text(
                                  "VERIFY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                )),


                          ],
                        )
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: 20,
                top: 50,
                child: GestureDetector(
                  onTap: ()=> Navigator.pop(context),
                  child: CircleAvatar(
                    radius: 26,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_back_ios_new, color: Colors.black,size: 18,),
                              ),
                ))
          ],
        )
      ),
    );
  }
}
