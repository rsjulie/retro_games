import 'package:get/get.dart';
import 'package:rock_paper_scissors_with_firebase/app/pages/home/home_page.dart';

class HomeRoute {
  HomeRoute._();
  static final routes = [GetPage(name: '/', page: () => const HomePage())];
}
