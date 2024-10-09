import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/styles/form_label.dart';

class MenuArea extends StatelessWidget {
  const MenuArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0XFFECF0F4),
              radius: 26,
              child: Image(
                  image: AssetImage("assets/Menu.png")),
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deliver to",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text("Halal Lab office",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300
                  ),)
              ],
            ),
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
    );
  }
}