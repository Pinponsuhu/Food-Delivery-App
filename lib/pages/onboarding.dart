import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/styles/form_label.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Map<String, Object>> details = [
    {
      "title" : "All your favorites",
      "svg" : "svg/favourite.svg"
    },
    {
      "title" : "Order from chosen chef",
      "svg" : "svg/chef.svg"
    },
    {
      "title" : "Free delivery offers",
      "svg" : "svg/delivery.svg"
    },
  ];

  Container dispIndicator({required double width}){
    return Container(
      width: width,
      height: 10,
    );
  }


  List<Container> indicators = [
    Container(
      width: 20,
      color: Color(0XFFFF7622),
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: 6),
    ),
    Container(
      width: 20,
      color: Color(0XFFFF7622),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 6,
    ),
    Container(
      width: 20,
      height: 6,
      color: Color(0XFFFF7622),
      margin: EdgeInsets.symmetric(horizontal: 6),
    ),
  ];
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index){
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: 3,
                itemBuilder: (context,index){
                final detail = details[index];
                  return Column(
                    children: [
                      Spacer(),
                      AspectRatio(
                        aspectRatio: 20/12,
                          child: SvgPicture.asset(
                              detail['svg'].toString()
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          detail['title'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                          "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
                        style: TextStyle(
                          fontSize: 16,

                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer()
                    ],
                  );
                }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      details.length,
                          (index){
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 8,
                          width: _currentPage == index ? 24 : 12,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(3)
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: (){
                    _currentPage != (details.length - 1) ? _pageController.nextPage(duration: Duration(milliseconds: 1000),curve: Curves.easeIn) :
                    _pageController.previousPage(duration: Duration(milliseconds: 1000), curve: Curves.easeOut);
                  },
                  child: Text(
                    _currentPage != (details.length - 1) ? "Next" : "Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xffFF7622),
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  child: Text(
                    _currentPage != (details.length - 1) ? "Skip" : "Get started",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity, 46),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
