import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cats/tshirt.png',
            image_caption: 'Shirts',
          ),
          Category(
            image_location: 'assets/images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/cats/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'assets/images/cats/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'assets/images/cats/informal.png',
            image_caption: 'Informal',
          ),

          Category(
            image_location: 'assets/images/cats/shoe.png',
            image_caption: 'Shoes',
          ),

          Category(
            image_location: 'assets/images/cats/accessories.png',
            image_caption: 'Others',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 40.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
