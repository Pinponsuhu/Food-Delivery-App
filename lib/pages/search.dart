import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/styles/form_label.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map?;
    _searchText.text = data!['search'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 32,left: 16,right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFFECF0F4),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_outlined,size: 18,),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                        "Search",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.black,
                      child: FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white,),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: primaryColor,
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
                            ),
                          ),))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14),
              padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
              decoration: BoxDecoration(
                  color: Color(0XFFF0F5FA),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: TextField(
                controller: _searchText,
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
            )
          ],
        ),
      )
    );
  }
}
