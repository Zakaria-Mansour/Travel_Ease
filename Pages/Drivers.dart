class Driver {
  String name;
  int ID;
  int CarNo;
  double averageRating;
  int totalReviews;

  Driver({
    required this.ID,
    required this.name,
    required this.CarNo,
    required this.averageRating,
    required this.totalReviews,
  });

  void displayInfo() {
    print("ID: $ID - Name: $name | CarNo: $CarNo");

    print("⭐ $averageRating stars (from $totalReviews reviews)");
  }
}
