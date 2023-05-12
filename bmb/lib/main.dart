import 'package:bmb/pages/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart'
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bmb/services/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyAZk5mW8BP4WLeBAQCysI9v35Tap1xphjo',
          appId: "1:944705957648:android:421777937f78f2c423ff95",
          messagingSenderId: "944705957648",
          projectId: "etsmbayeetfrere"));
  runApp(MultiProvider(
    providers: [
      StreamProvider.value(initialData: null, value: Authentication().user)
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMB",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: Wrapper(),
    );
  }
}
