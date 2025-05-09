class RouteInfo {

  String destination;
  double price;
  DateTime bookingTime;

  RouteInfo({
    required this.destination,
    required this.price,
    required this.bookingTime
  });
  static List<RouteInfo> allRoutes = [];

  void addDestination(){
  allRoutes.add(this);
      print("Destination  '${destination}' at ${bookingTime} added");
  }

  void displayRoutes(){
    print("destination : $destination");
    print("Time: ${bookingTime.day}-${bookingTime.month}-${bookingTime.year} ${bookingTime.hour}:${bookingTime.minute}");
    print("price : $price");
    print("ــــــــــــــــــــ");

  }
}