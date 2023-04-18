// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/horizontal_listview.dart';
import 'components/products.dart';
/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(
        'BMB',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}*/
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('assets/images/SLIDE-FER-1.png'),
          Image.asset('assets/images/SLIDE-INOX.png'),
          Image.asset('assets/images/SLIDE-MACRAIL4.png'),
          Image.asset('assets/images/TEST-SLIDE-PANNEAUX-REVETEMENT9.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 6000),
        dotSize: 4.0,
        dotColor: Colors.red[600],
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//          header
            new UserAccountsDrawerHeader(
              accountName: Text('Ndiogou Diop'),
              accountEmail: Text('ndiogou.diop@c3s.sn'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
//          body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Accueil'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mon Compte'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Produits'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Commandes'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favoris'),
                leading: Icon(Icons.home),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Parametres'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('A propos'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text('Produits Récents'),),

          //grid view
          Container(
            height: 320.0,
            child: Produits(),
          )
        ],
      ),
    );
  }
}
