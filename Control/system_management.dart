import 'dart:async';

import '../Pages/Drivers.dart';
import '../Pages/Reservations.dart';
import '../Pages/RouteInfo.dart';

class SystemManagement {
  List<Driver> _drivers = [];
  List<Reservation> _reservations = [];

  void addDriver(Driver driver) {
    _drivers.add(driver);
    print("Drivers :${driver.ID}-${driver.name} has been added");
    print("");
  }

  void addReservation(Reservation reservation) {
    _reservations.add(reservation);
    print(
      "Reservation at ${reservation.location} has been added for ${reservation.name}",
    );
    print("");
  }

  void viewAllDrivers() {
    for (var driver in _drivers) {
      driver.displayInfo();
      print("ــــــــــــــــــــ");
    }
  }

  void viewAllReservations() {
    for (var reservation in _reservations) {
      reservation.displayBooking();
      print("ــــــــــــــــــــ");
    }
  }
}
