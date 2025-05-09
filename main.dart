import 'Control/system_management.dart';
import 'Pages/Drivers.dart';
import 'Pages/Reservations.dart';
import 'Pages/RouteInfo.dart';

void main() {
  var system = SystemManagement();

  var driver1 = Driver(
    ID: 1,
    name: "Ahmad",
    CarNo: 1234,
    averageRating: 4.5,
    totalReviews: 7,
  );
  var driver2 = Driver(
    ID: 2,
    name: "Anas",
    CarNo: 44122,
    averageRating: 4.1,
    totalReviews: 9,
  );
  var driver3 = Driver(
    ID: 3,
    name: "Mohammad",
    CarNo: 63254,
    averageRating: 4.9,
    totalReviews: 15,
  );

  system.addDriver(driver1);
  system.addDriver(driver2);
  system.addDriver(driver3);

  var route1 = RouteInfo(
    destination: "Amman",
    price: 11.5,
    bookingTime: DateTime.now(),
  );
    var route2 = RouteInfo(
    destination: "Irbid",
    price: 15,
    bookingTime: DateTime(2025, 5, 13, 8, 0),
  );
  var route3 = RouteInfo(
    destination: "Irbid",
    price: 15,
    bookingTime: DateTime(2025, 5, 15, 7, 0),
  );
  

  var reservation1 = Reservation(
    IdRes: 1,
    name: "Ali",
    location: route1.destination,
    bookingTimes: [route1.bookingTime],
    routes: [route1],
    drivers: [driver1],
  );
  var reservation2 = Reservation(
    IdRes: 2,
    name: "Saeed",
    location: route2.destination,
    bookingTimes: [route2.bookingTime],
    routes: [route2],
    drivers: [driver2],
  );
  var reservation3 = Reservation(
    IdRes: 3,
    name: "Amal",
    location: route3.destination,
    bookingTimes: [route3.bookingTime],
    routes: [route3],
    drivers: [driver3],
  );
  system.addReservation(reservation1);
  system.addReservation(reservation2);
  system.addReservation(reservation3);

  print("\n--- Drivers List ---");
  system.viewAllDrivers();

  print("\n--- Reservations List ---");
  system.viewAllReservations();
}
