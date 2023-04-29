import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
var selectedPage = 0;
var selectedPages = 0;
var selectedPageBottomBar = 0;


dynamic prefs;
dynamic card;
dynamic orders;
dynamic favourites;

dynamic setStatePriceOrderCallback;
dynamic setStateMainPageCallback;

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
  card = prefs.getString('card');
  orders = prefs.getString('orders');
  favourites = prefs.getString('favourites');
  if (card == null) {
    card = [];
  } else {
    card = jsonDecode(card);
  }
  if (orders == null) {
    orders = [];
  } else {
    orders = jsonDecode(orders);
  }
  if (favourites == null) {
    favourites = [];
  } else {
    favourites = jsonDecode(favourites);
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