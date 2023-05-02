import 'package:flutter/material.dart';

class Commande_produit extends StatefulWidget {
  @override
  _Commande_produitState createState() => _Commande_produitState();
}

class _Commande_produitState extends State<Commande_produit> {
  var Produit_commande = [
    {
      "name": "BMB-12003",
      "image": "assets/produits/BMB-12003.jpg",
      "price": 4500,
      "size": "GM",
      "color": "black",
      "qte": 5
    },
    {
      "name": "BMB-12023",
      "image": "assets/produits/BMB-12023.jpg",
      "price": 5500,
      "size": "PM",
      "color": "black",
      "qte": 2
    },
    {
      "name": "BMB-12026",
      "image": "assets/produits/BMB-12026.jpg",
      "price": 2500,
      "size": "GM",
      "color": "black",
      "qte": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Produit_commande.length,
        itemBuilder: (context, index) {
          return Single_commande_produit(
              c_prod_name: Produit_commande[index]["name"],
              c_prod_picture: Produit_commande[index]["image"],
              c_prod_price: Produit_commande[index]["price"],
              c_prod_size: Produit_commande[index]["size"],
              c_prod_color: Produit_commande[index]["color"],
              c_prod_qte: Produit_commande[index]["qte"]);
        });
  }
}

class Single_commande_produit extends StatelessWidget {
  final c_prod_name;
  final c_prod_picture;
  final c_prod_price;
  final c_prod_size;
  final c_prod_color;
  final c_prod_qte;

  Single_commande_produit(
      {this.c_prod_name,
      this.c_prod_picture,
      this.c_prod_price,
      this.c_prod_size,
      this.c_prod_color,
      this.c_prod_qte});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//*££££££££££££££££££££ LEADING SECTION £££££££££
        leading: new Image.asset(
          c_prod_picture,
          width: 80.0,
          height: 80.0,
        ),

        //++++++++++++++++++ TITLE SECTION +++++++++++++++++++
        title: new Text(c_prod_name),
//++++++++++++++++++ SUBTITLE SECTION +++++++
        subtitle: new Column(
          children: <Widget>[
            //---ROW INSIDE THE COLUMN
            new Row(
              children: <Widget>[
                //---- section pour la taille
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Taille:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    c_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                //****** section pour la couleur
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Couleur:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    c_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            //       ------- SECTION POUR LE PRIX DU PRODUITS --------------------
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\CFA ${c_prod_price}",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),

        trailing: new SingleChildScrollView(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
              new Text("${c_prod_qte}"),
              new IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
        ),
      ),
    );
  }
}
