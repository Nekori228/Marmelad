import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/appBar/favoriteAppBar.dart';
import '../../../widgets/profilewidgets/favorite/favoriteOrderItems.dart';

class FavoritesProfilePage extends StatefulWidget {
  const FavoritesProfilePage({Key? key}) : super(key: key);

  @override
  State<FavoritesProfilePage> createState() => _FavoritesProfilePageState();
}

class _FavoritesProfilePageState extends State<FavoritesProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FavoriteAppBar(),
      backgroundColor: Color(0xFF000000),
     body: SafeArea(
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             SizedBox(height: 30),
             FavoriteOrderItems1(),
             SizedBox(height: 30),
             FavoriteOrderItems2()
           ],
         ),
       ),
     ),
    );
  }
}
