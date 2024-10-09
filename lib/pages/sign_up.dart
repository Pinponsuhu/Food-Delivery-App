import 'package:flutter/material.dart';
import 'package:food/styles/form_label.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0XFF1E1E2E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
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
                          "Log In",
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
                          "Please sign in to your existing account",
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
                      right: 0,
                      child: Image(
                          height: 300,
                          image: AssetImage("assets/lines.png"))
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
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
                          contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 4),
                          fillColor: Color(0XFFF0F5FA),
                          filled: true,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                      form_vertical_space,
                      Text(
                        "Password",
                        style: form_label,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 4),
                          fillColor: Color(0XFFF0F5FA),
                          filled: true,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false, onChanged: null,

                              ),
                              Text("Remember me")
                            ],
                          ),
                          GestureDetector(
                            onTap: ()=> Navigator.pushNamed(context,"/forgot-password"),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: primaryColor
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              minimumSize: Size(double.infinity, 56),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          child:
                          Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),
                          )),
                      SizedBox(
                        height: 46,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Colors.grey[700]
                            ),
                          ),
                          SizedBox(width: 12,),
                          GestureDetector(
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      Center(
                        child: Text(
                          "Or",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 46,
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
