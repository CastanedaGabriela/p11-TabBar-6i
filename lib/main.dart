import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Gabriela Castaneda",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Gabriela Castaneda"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "Carro", icon: Icon(Icons.car_crash_outlined)),
            Tab(text: "Clientes", icon: Icon(Icons.account_box_outlined)),
            Tab(text: "Us", icon: Icon(Icons.favorite)),
            Tab(text: "Cuenta", icon: Icon(Icons.account_balance_outlined))
          ] //fin tabs
              ), //fin bottomTabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Ferrari 1",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Center(
            child: Text(
              "Christian",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Center(
            child: Text(
              "6561209973",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Center(
            child: Text(
              "Correo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ]),
      ), //fin de Scaffold
    ); //DefaultTabController
  } //fin widget
} //_MiPagionaInicial
