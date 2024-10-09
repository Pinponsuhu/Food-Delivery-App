import 'package:flutter/material.dart';
import 'package:food/styles/form_label.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  List<Map<String,dynamic>> socials = [
    {
      "icon" : FontAwesomeIcons.facebookF,
      "ontap" : (){
        print("fb");
      },
      "color" : Colors.blue[800]
    },
    {
      "icon" : FontAwesomeIcons.x,
      "ontap" : (){
        print("x");
      },
      "color" : Colors.black
    },
    {
      "icon" : FontAwesomeIcons.apple,
      "ontap" : (){
        print("aapl");
      },
      "color" : Colors.grey[700]
    },
  ];
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
                          "EMAIL",
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
                          "PASSWORD",
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
                          onPressed: ()=> Navigator.pushNamed(context, "/home"),
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
                            onTap: ()=> Navigator.pushNamed(context,"/sign-up"),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            socials.length,
                            (index){
                              final social = socials[index];
                          return SocialButton(socialIcon: social['icon'], ontap: social['ontap'],color: social['color'],index: index,);
                            }
                        ),
                      )
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

class SocialButton extends StatelessWidget {
  final IconData socialIcon;
  final Function ontap;
  final Color color;
  final int index;

  SocialButton({ required this.socialIcon, required this.ontap, required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> ontap(),
      child: Container(
        margin: index == 2 ? EdgeInsets.zero : EdgeInsets.only(right: 36),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: FaIcon(
              socialIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
