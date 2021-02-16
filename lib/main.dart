import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/first_page.dart';
import 'package:my_app/pages/second_page.dart';
import 'package:my_app/pages/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget es la raíz de su aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciando Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget child;

    switch (_index) {
      case 0:
        child=
        FlutterLogo();
        break;
      case 1:
        child=
        MaterialApp(
            debugShowCheckedModeBanner: false, home: SecondPage()); //Quitar barra roja del celular
        break;
      case 2:
        child=
        MaterialApp(
            debugShowCheckedModeBanner: false, home: ThirdPage()); //Quitar barra roja del celular
        break;
      default:
    }

    //Creando barra de navegación
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0),
                label: ("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.wysiwyg, color: Colors.orangeAccent, size: 30.0),
                label: ("Register")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.greenAccent, size: 30.0),
                label: ("Shopping Cart ")),
          ]),
    );
  }
}
