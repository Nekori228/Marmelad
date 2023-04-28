import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
var selectedPage = 0;
var selectedPages = 0;


dynamic prefs;
dynamic card;

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
  card = prefs.getString('card');
  if (card == null) {
    card = [];
  } else {
    card = jsonDecode(card);
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