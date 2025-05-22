import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cars = [];

  @override
  void initState() {
    super.initState();
    loadCars();
  }

  void loadCars() async {
    CarList carList = await CarService.getCarList();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Examen PMDM")),
      body: SingleChildScrollView(child: Column(children: [Container()])),
    );
  }
}
