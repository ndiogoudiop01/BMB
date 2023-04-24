import 'package:bmb/pages/produit_details.dart';
import 'package:flutter/material.dart';

class Produits extends StatefulWidget {
  @override
  _ProduitsState createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {
  var produit_list = [
    {
      "name": "BMB-12003",
      "image": "assets/produits/BMB-12003.jpg",
      "old_price": 5000,
      "price": 4500,
    },
    {
      "name": "BMB-12023",
      "image": "assets/produits/BMB-12023.jpg",
      "old_price": 7000,
      "price": 5500,
    },
    {
      "name": "BMB-12026",
      "image": "assets/produits/BMB-12026.jpg",
      "old_price": 3000,
      "price": 4500,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: produit_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: produit_list[index]["name"],
            product_piture: produit_list[index]["image"],
            product_old_price: produit_list[index]["old_price"],
            product_price: produit_list[index]["price"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_piture;
  final product_old_price;
  final product_price;

  Single_prod({
    this.product_name,
    this.product_piture,
    this.product_old_price,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: product_name,
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProduitDetails())),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  product_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  "\CFA $product_price",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            child: Image.asset(
              product_piture,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}
