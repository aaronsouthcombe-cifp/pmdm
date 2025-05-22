class CarList {
  final Map<String, List<String>> message;
  final String status;
  CarList({required this.message, required this.status});
  factory CarList.fromJson(Map<String, dynamic> json) {
    Map<String, List<String>> cars = {};
    json["message"].forEach((key, value) {
      cars[key] = List<String>.from(value);
    });
    return CarList(message: cars, status: json["status"]);
  }
}
