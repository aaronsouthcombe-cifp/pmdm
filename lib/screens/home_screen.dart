import 'package:flutter/material.dart';
import '../models/car_list.dart';
import '../services/car_service.dart';

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
    List<String> carNames = carList
    setState(() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Examen PMDM")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            ListView.builder(
              itemCount: carList.length,
              itemBuilder: (context, index) {
                String car = carList[index];
                return ListTile(title: Text[car[0]]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
