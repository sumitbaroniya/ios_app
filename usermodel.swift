class User {
  final String id;
  final String name;
  final String mobileNumber;
  // Other common user properties

  User({required this.id, required this.name, required this.mobileNumber});
}

class Dealer extends User {
  final String natureOfMaterial;
  final double weightOfMaterial;
  final int quantity;
  final String city;
  final String state;

  Dealer({
    required String id,
    required String name,
    required String mobileNumber,
    required this.natureOfMaterial,
    required this.weightOfMaterial,
    required this.quantity,
    required this.city,
    required this.state,
  }) : super(id: id, name: name, mobileNumber: mobileNumber);
}

class Driver extends User {
  final String truckNumber;
  final int truckCapacity;
  final String transporterName;
  final int drivingExperience;
  final List<Route> interestedRoutes;

  Driver({
    required String id,
    required String name,
    required String mobileNumber,
    required this.truckNumber,
    required this.truckCapacity,
    required this.transporterName,
    required this.drivingExperience,
    required this.interestedRoutes,
  }) : super(id: id, name: name, mobileNumber: mobileNumber);
}

class Route {
  final String fromCity;
  final String fromState;
  final String toCity;
  final String toState;

  Route({
    required this.fromCity,
    required this.fromState,
    required this.toCity,
    required this.toState,
  });
}