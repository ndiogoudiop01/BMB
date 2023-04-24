import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cart/alu.jpg',
            image_caption: 'Aluminium',
          ),
          Category(
            image_location: 'assets/cart/fer-forge.jpg',
            image_caption: 'Fer Forgé',
          ),
          Category(
            image_location: 'assets/cart/INOX.jpg',
            image_caption: 'Inox',
          ),
          Category(
            image_location: 'assets/cart/feuille-PLEXIGLAS.jpg',
            image_caption: 'Feuilles Plexiglas',
          ),
          Category(
            image_location: 'assets/cart/rideau-metallique.jpg',
            image_caption: 'Rideaux Metalliques',
          ),
          Category(
            image_location: 'assets/cart/vitrerie.jpg',
            image_caption: 'Vitrerie',
          ),
          Category(
            image_location: 'assets/cart/ferdeco.jpg',
            image_caption: 'Fer Décoratifs',
          ),
          Category(
            image_location: 'assets/cart/MACRAIL.jpg',
            image_caption: 'Système Macrail',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

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
              child: Text(
                image_caption,
                style: new TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
