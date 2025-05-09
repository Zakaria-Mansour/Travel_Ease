import 'Drivers.dart';
import 'RouteInfo.dart';

class Reservation {
  int IdRes;
  String name;
  String location;
  List<RouteInfo> routes;
  List<Driver> drivers;
  List<DateTime> bookingTimes;

  static List<Reservation> allReservations = [];

  Reservation({
    required this.IdRes,
    required this.name,
    required this.location,
    required this.bookingTimes,
    required this.routes,
    required this.drivers,
  });

  void addReservation() {
    allReservations.add(this);
    print("Reservation by $name added successfully.");
  }

  void displayBooking() {
    print("Id : $IdRes - Name : $name");
    print("location :$location");

    for (int i = 0; i < routes.length; i++) {
      var route = routes[i];

      Driver? driver;
      if (i < drivers.length) {
        driver = drivers[i];
      }

      DateTime? time;
      if (i < bookingTimes.length) {
        time = bookingTimes[i];
      }

      // print("Trip ${i + 1}: ");
      print("Destination: ${route.destination} - \$${route.price}");

      if (driver != null) {
        print("Driver: ${driver.name} ⭐ ${driver.averageRating}");
      }

      if (time != null) {
        var formattedTime =
            "${time.day}-${time.month}-${time.year} ${time.hour}:${time.minute < 10 ? '0${time.minute}' : time.minute}";
        print("Time: $formattedTime");
      }
      print("");
    }
  }
}
