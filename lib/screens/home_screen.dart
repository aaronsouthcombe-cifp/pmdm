import 'package:flutter/material.dart';
import '../models/car_list.dart';
import '../services/car_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cars = [];
  bool loadingCars = true;
  List<String> carNames = [];

  @override
  void initState() {
    super.initState();
    loadCars();
  }

  void loadCars() async {
    CarList carList = await CarService.getCarList();
    List<String> carNames = carList.message.keys.toList();
    setState(() {
      cars = carNames;
      loadingCars = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cars (Examen PMDM)")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            loadingCars
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: carNames.length,
                    itemBuilder: (context, index) {
                      String car = carNames[index];
                      return ListTile(
                        title: Text(
                          car[0].toUpperCase() + car.substring(1).toLowerCase(),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
