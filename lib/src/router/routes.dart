import 'package:get/get.dart';
import '../pages/Layout/layoutView.dart';
import '../pages/Search/searchView.dart';
import '../pages/SearchResult/searchResultView.dart';
import '../pages/Teacher/TeacherView.dart';
import '../pages/Plan/planView.dart';
import '../pages/AddPlan/addPlanView.dart';
import '../pages/Items/itemView.dart';

final List<GetPage> router = [
  GetPage(name: '/', page: () => LayoutView()),
  GetPage(name: '/search', page: () => SearchView()),
  GetPage(name: '/searchResult', page: () => SearchResultView()),
  GetPage(name: '/teacher', page: () => TeacherView()),
  GetPage(name: '/plan', page: () => PlanView()),
  GetPage(name: "/addplans", page: () => AddPlanView()),
  GetPage(name: "/items", page: () => ItemView())
];
