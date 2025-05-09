# Documentation for `main.dart`

This code serves as the main entry point for our **Transportation Management System**, where drivers can be added and reservations can be made for different routes. The application demonstrates a simple structure to manage the drivers and their respective reservations.

---

## 📘 Overview

The `main.dart` file is responsible for initializing the transportation system, adding drivers and routes, and managing reservations. It utilizes the following classes:

- `SystemManagement`
- `Driver`
- `RouteInfo`
- `Reservation`

With this file, users can interact with the lists of drivers and reservations through a console interface.

---

## 🧠 Code Explanation

### 📥 Imports

The code begins by importing necessary modules:

- `Control/system_management.dart`: Manages the core functionalities of the system.
- `Pages/Drivers.dart`: Manages driver-related operations.
- `Pages/Reservations.dart`: Handles reservation-related functionalities.
- `Pages/RouteInfo.dart`: Contains details about different routes available in the system.

---

### 🚀 Main Function

The main function serves as the starting point for the application:

```dart
var system = SystemManagement();
