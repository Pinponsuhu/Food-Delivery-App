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

  List<Map<String, dynamic>> restaurants = [
    {
      "name": "Rose Garden Restaurant",
      "rating" : 4.7,
      "time": 20,
      "delivery" : "Free",
      "image" : "https://images.unsplash.com/photo-1481833761820-0509d3217039?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Rose Garden Lounge",
      "rating" : 4.4,
      "time": 10,
      "delivery" : "Free",
      "image" : "https://images.unsplash.com/photo-1620219365994-f443a86ea626?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero,(){
      _showDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 38),
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
              height: 20
            ), 
            Container(
              margin: EdgeInsets.only(bottom: 14),
              padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0XFFF0F5FA),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  TextField(
                    textInputAction: TextInputAction.search,
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
                    onSubmitted: (value){
                      Navigator.pushNamed(context, "/search", arguments: {
                        "search" : value
                      });
                    },
                  ),
                  IconButton(
                    onPressed: (){
                      print("object");
                    },
                    icon: Icon(Icons.close),
                  )
                ],
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
              height: 260,
              decoration: BoxDecoration(
              ),
              child: ListView.builder(
                itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    final category = categories[index];
                    return GestureDetector(
                      onTap: ()=> print(category['name']),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(right: 24,top: 100,bottom: 20,left: 10),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                  offset: Offset(0,4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              mainAxisAlignment : MainAxisAlignment.end,
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Text(
                                    category['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "Starting",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                        "\$${category['price']}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        color: primaryColor
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 100,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 160,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(image: NetworkImage(category['image'],),fit: BoxFit.cover)
                                ),
                              )
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Open Restaurants",
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants.length,
                itemBuilder: (context,index){
                final restaurant = restaurants[index];
                  return Container(
                    padding: EdgeInsets.only(bottom: 12),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 190,
                          margin: EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: NetworkImage(restaurant['image']))
                          ),
                        ),
                        Text(restaurant['name'],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.star,color: primaryColor,),
                            SizedBox(
                              width: 8,
                            ),
                            Text(restaurant['rating'].toString()),
                            SizedBox(width: 20,),
                            FaIcon(FontAwesomeIcons.bus,color: primaryColor),
                            SizedBox(
                              width: 8,
                            ),
                            Text(restaurant['delivery']),
                            SizedBox(width: 20,),
                            FaIcon(FontAwesomeIcons.clock,color: primaryColor),
                            SizedBox(
                              width: 8,
                            ),
                            Text(restaurant['time'].toString())
                          ],
                        )
                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}


 _showDialog(context) => showDialog(
    context: context,
    builder: (BuildContext context){
          return Dialog(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 36),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(image: AssetImage("assets/popupBg.png")),
                      gradient: LinearGradient(
                          end: Alignment.topLeft,
                          begin: Alignment.bottomRight,
                          colors: [
                            Color(0XFFE76F00),
                            Color(0XFFFFEB34)
                          ])
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Hurry Offers!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 34
                        ),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Text(
                        "#1243CD2",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Use the coupon get 25% discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              minimumSize: Size(double.infinity, 58),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 2.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          onPressed: null,
                          child: Text(
                            "GOT IT",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                      )
                    ],
                  ),

                ),
                Positioned(
                  top: -20,
                    right: -10,
                    child: GestureDetector(
                      onTap: ()=> Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFE194),
                          shape: BoxShape.circle
                        ),
                        child: FaIcon(FontAwesomeIcons.xmark, color: primaryColor,size: 16,),
                      ),
                    )
                )
              ],
            ),
          );
    }
);