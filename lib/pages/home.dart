import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/components/menu_area.dart';
import 'package:food/styles/form_label.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Map<String, dynamic>> categories = [
    {
      "name" : "Pizza",
      "price" : 70,
      "image" : "https://images.unsplash.com/photo-1616028678351-3882f0aa88d7?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name" : "Pasta",
      "price" : 90,
      "image" : "https://images.unsplash.com/photo-1516100882582-96c3a05fe590?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name" : "Burger",
      "price" : 80,
      "image" : "https://images.unsplash.com/photo-1491960693564-421771d727d6?q=80&w=1526&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 38),
        child: Column(
          children: [
            MenuArea(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                    "Hey Halal, ",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                    "Good Afternoon!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ), 
            SizedBox(
              height: 24
            ), 
            Container(
              margin: EdgeInsets.only(bottom: 14),
              padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0XFFF0F5FA),
                borderRadius: BorderRadius.circular(8)
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    icon: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Colors.grey[600],
                    ),
                    iconColor: Color(0XFFF0F5FA),
                    hintText: "Search by dishes or restaurants",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color(0XFFF0F5FA),
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "All Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                        "See all",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w500
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: ListView.builder(
                itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    final category = categories[index];
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          width: 220,
                          height: 220,
                          decoration: BoxDecoration(
                              color: Colors.red
                          ),
                        ),
                        Positioned(
                          bottom: 70,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(category['image']))
                              ),
                            )
                        )
                      ],
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}


