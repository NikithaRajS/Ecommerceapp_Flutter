import 'package:flutter/material.dart';
import 'package:emall/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var productlist = [
    {
      "name": "Blazer",
      "picture": "images/Products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/Products/dress1.jpeg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Shoe",
      "picture": "images/Products/shoe1.jpg",
      "old_price": 200,
      "price": 250,
    },
    {
      "name": "Skirt",
      "picture": "images/Products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productlist.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: productlist[index]['name'],
            prod_picture: productlist[index]['picture'],
            prod_old_price: productlist[index]['old_price'],
            prod_price: productlist[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_old_price,
      this.prod_picture,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //Here we are passing the values of product to ProductDetails
                  builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_newprice: prod_price,
                      product_detail_oldprice: prod_old_price,
                      product_detail_picture: prod_picture))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                     child:Row(
                       children: [
                         Expanded(child: Text("${prod_name}")),
                         Expanded(child: Text("\$${prod_price}"))
                       ],
                     )






                    /* ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),  */
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
