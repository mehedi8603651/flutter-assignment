class Person {
  final String _name;
  final int _age;
  Person(this._name, this._age);
  String get name {
    return _name;
  }

  int get age {
    return _age;
  }

  String getInfo() {
    return 'Name is $name, Age is $age';
  }
}

class Driver extends Person {
  String vehicle;
  Driver(super.name, super.age, this.vehicle);
  @override
  String getInfo() {
    return 'name is $name,\nage is $age,\nVehicle is $vehicle';
  }
}

abstract class Ride {
  double calculateFare(double distance);
}

class BikeRide implements Ride {
  @override
  double calculateFare(double distance) {
    return distance * 10.0;
  }

  void printFare(Ride ride, double distance) {
    double fare = ride.calculateFare(distance);
    print("Fare: $fare");
  }
}

void main() {
  Person p = Driver('mehedi', 20, 'BMW');
  print(p.getInfo());
  BikeRide ride = BikeRide();
  ride.printFare(ride, 200);
}
