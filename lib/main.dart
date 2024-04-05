import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Bertha Fuentes"),
          bottom: TabBar(tabs: [
            Tab(
              text: "Comics",
              icon: Icon(Icons.book_online),
            ),
            Tab(
              text: "Nosotro",
              icon: Icon(Icons.people),
            ),
            Tab(
              text: "Generos",
              icon: Icon(Icons.wordpress),
            ),
            Tab(
              text: "Sitio",
              icon: Icon(Icons.location_city),
            ),
          ] //Texto Icono
              ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text(
                "Alerta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "Opcion2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "Opcion3",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "Opcion4",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
} //fin app
