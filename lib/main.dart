import 'package:flutter/material.dart';
import 'package:garcia/pages/first_pages.dart';
import 'package:garcia/pages/second_pages.dart';
import 'package:garcia/pages/third_pages.dart';

void main() => runApp(Pizzas());

class Pizzas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buger garcia',
      home: MiPaginaInicio(),
    );
  }
} //fin clase GarciaApp

class MiPaginaInicio extends StatefulWidget {
  @override
  _MiPaginaInicioState createState() => _MiPaginaInicioState();
} //fin clase pagina inicio con estado

class _MiPaginaInicioState extends State<MiPaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //variable size
    Widget child; //widget creado por el usuario
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch selecciona paginas

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Home')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Resgister')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.orangeAccent, size: 30.0), //icon
            title: Text('Offers')), //
      ]), // bottom
    ); //fin scaffold
  } //fin de widgets
} //fin de la clase MiPaginaInicio
