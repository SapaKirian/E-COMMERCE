import 'package:get/get.dart';
import 'package:ecomapp/views/home_view.dart';
import 'package:ecomapp/views/favorite/favorite.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeView(),
    // Favorite(),
    // CartScreen(),
    // NotificationScreen(),
    // ProfileScreen(),
  ];
}