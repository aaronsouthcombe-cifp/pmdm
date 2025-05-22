class CarService {
  static const String baseUrl =
      "https://ca3b9b6800c0f6da2713.free.beeceptor.com/api/cars";
  static Future<CarList> getCarList() async {
    var url = Uri.parse("$baseUrl/");
    var res = await http.get(url);
    return CarList.fromJson(json.decode(res.body));
  }
}
