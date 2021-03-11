import 'package:get/get.dart';
import '../pages/MyOrderDetails/myOrderDetailsView.dart';
import '../pages/Layout/layoutView.dart';
import '../pages/Search/searchView.dart';
import '../pages/SearchResult/searchResultView.dart';
import '../pages/Teacher/TeacherView.dart';
import '../pages/Plan/planView.dart';
import '../pages/AddPlan/addPlanView.dart';
import '../pages/Items/itemView.dart';
import '../pages/MyOrder/myOrderView.dart';
import '../pages/Message/messageView.dart';
import '../pages/Collection/collectionView.dart';
import '../pages/Hishory/historyView.dart';
import '../pages/ChangePersonal/changePersonalView.dart';

final List<GetPage> router = [
  GetPage(name: '/', page: () => LayoutView()),
  GetPage(name: '/search', page: () => SearchView()),
  GetPage(name: '/searchResult', page: () => SearchResultView()),
  GetPage(name: '/teacher', page: () => TeacherView()),
  GetPage(name: '/plan', page: () => PlanView()),
  GetPage(name: "/addplans", page: () => AddPlanView()),
  GetPage(name: "/items", page: () => ItemView()),
  GetPage(name: "/order", page: () => MyOrderView()),
  GetPage(name: "/orderdetails", page: () => MyOrderDetailsView()),
  GetPage(name: "/message", page: () => MessageView()),
  GetPage(name: "/collection", page: () => CollectionView()),
  GetPage(name: "/history", page: () => HistoryView()),
  GetPage(name: "/changeper", page: () => ChangePersonalView())
];
