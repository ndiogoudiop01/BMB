import 'package:flutter/material.dart';

class ProduitDetails extends StatefulWidget {
  final product_detail_nom;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_old_price;

  ProduitDetails({
    this.product_detail_nom,
    this.product_detail_picture,
    this.product_detail_price,
    this.product_detail_old_price,
});

  @override
  State<ProduitDetails> createState() => _ProduitDetailsState();
}

class _ProduitDetailsState extends State<ProduitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Boutique bmb'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
            // ignore: prefer_const_constructors
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
            ),
          )
        ],
      ),
    );
  }
}
