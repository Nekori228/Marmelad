import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

var selectedPage = 0;
var selectedPages = 0;
var selectedPageBottomBar = 0;
var selectedMenuItem = 0;

dynamic prefs;
dynamic card;
dynamic orders;
dynamic favourites;
dynamic booking;
dynamic comments;

dynamic setStatePriceOrderCallback;
dynamic setStateMainPageCallback;

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
  card = prefs.getString('card');
  orders = prefs.getString('orders');
  favourites = prefs.getString('favourites');
  booking = prefs.getString('booking');
  if (card == null) {
    card = [];
    prefs.setString('card', jsonEncode(card));
  } else {
    card = jsonDecode(card);
  }
  if (orders == null) {
    orders = [];
    prefs.setString('orders', jsonEncode(orders));
  } else {
    orders = jsonDecode(orders);
  }
  if (favourites == null) {
    favourites = [];
    prefs.setString('favourites', jsonEncode(favourites));
  } else {
    favourites = jsonDecode(favourites);
  }
  if (booking == null) {
    booking = [];
    prefs.setString('booking', jsonEncode(booking));
  } else {
    booking = jsonDecode(booking);
  }
  if (comments == null) {
    comments = {};
    prefs.setString('comments', jsonEncode(comments));
  }
  else {
    comments = jsonDecode(comments);
  }
}

var dateMonth = {
  1: 'января',
  2: 'февраля',
  3: 'марта',
  4: 'апреля',
  5: 'мая',
  6: 'июня',
  7: 'июля',
  8: 'августа',
  9: 'сентября',
  10: 'октября',
  11: 'ноября',
  12: 'декабря',
};
