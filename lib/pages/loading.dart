import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> nextPage() async{
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, "/onboarding");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
        children: [
          Center(
            child: Image(
                image: AssetImage("assets/Logo.png"),
                width: 70,
            ),
          ), 
          Positioned(
            top: -5,
            left: -10,
            child: Image(
                image: AssetImage("assets/top_eclispe.png")
            ),
          ), 
          Positioned(
            bottom: -320,
            right: -260,
            child: Image(
                image: AssetImage(
                    "assets/bottom_eclispe.png",

                )
            ),
          )
        ],
        ),
      ),
    );
  }
}
