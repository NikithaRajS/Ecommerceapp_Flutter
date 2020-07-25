import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cat/accessories.png',
            image_caption: 'Accessories',
          ),
          Category(
            image_location: 'images/cat/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cat/formal.png',
            image_caption: 'Formals',
          ),
          Category(
            image_location: 'images/cat/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'images/cat/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/cat/shoe.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cat/tshirt.png',
            image_caption: 'Tshirts',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  // ignore: non_constant_identifier_names
  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: TextStyle(fontSize: 12.0),),
              ),
            ),
          )),
    );
  }
}
