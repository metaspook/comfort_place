import 'package:comfort_place/pages/user_page_views/user_favorite_view.dart';
import 'package:comfort_place/pages/user_page_views/user_home_view.dart';
import 'package:comfort_place/pages/user_page_views/user_message_view.dart';
import 'package:comfort_place/pages/user_page_views/user_profile_view.dart';
import 'package:flutter/cupertino.dart';

class BottomNavController extends ChangeNotifier {
  int _currentIndex = 0;

  final _views = const {
    "Home": UserHomeView(),
    "Favorite": UserFavoriteView(),
    "Message": UserMessageView(),
    "Profile": UserProfileView(),
  };
  int get currentIndex => _currentIndex;
  Widget get currentView => _views.values.elementAt(_currentIndex);
  String get currentAppTitle => _views.keys.elementAt(_currentIndex);

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
