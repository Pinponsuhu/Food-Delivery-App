import 'package:flutter/material.dart';
import 'package:food/styles/form_label.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 220,
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
                              "Forgot Password?",
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
                              "Input email to reset password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
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
                          right: -10,
                          child: Image(
                              height: 350,
                              image: AssetImage("assets/lines.png"))
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: form_label,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 18,horizontal: 4),
                                fillColor: Color(0XFFF0F5FA),
                                filled: true,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            TextButton(
                                onPressed: ()=> Navigator.pushNamed(context, "/verify-password"),
                                style: TextButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    minimumSize: Size(double.infinity, 58),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    )
                                ),
                                child:
                                Text(
                                  "SEND CODE",
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
              )),
        ],
      ),
    );
  }
}
