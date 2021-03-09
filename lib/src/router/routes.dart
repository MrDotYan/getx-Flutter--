import 'package:get/get.dart';
import '../pages/Layout/layoutView.dart';
import '../pages/Search/searchView.dart';
import '../pages/SearchResult/searchResultView.dart';
import '../pages/Teacher/TeacherView.dart';

final List<GetPage> router = [
  GetPage(name: '/', page: () => LayoutView()),
  GetPage(name: '/search', page: () => SearchView()),
  GetPage(name: '/searchResult', page: () => SearchResultView()),
  GetPage(name: '/teacher', page: () => TeacherView())
];
