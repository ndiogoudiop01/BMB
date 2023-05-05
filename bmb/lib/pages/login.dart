import 'package:flutter/material.dart';
import 'package:bmb/services/authentication.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool inLoadingProcess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("images/MAISON-BMB.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                'ETS MBAYE ET FRERE(BMB)',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Decouvrez nos larges produits d'aluminium",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              inLoadingProcess
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ElevatedButton(
                      onPressed: () {},
                      child: Text("Connecter vous avec Google"),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  signIn() {
    setState(() {
      inLoadingProcess = true;
      Authentication().signInWithGoogle();
    });
  }
}
