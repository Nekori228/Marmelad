import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
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
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: ElevatedButton(
                      onPressed: () {},
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Row(
                        children: [
                          favourites[index]['name'] == 'Фреш роллы с креветкой'
                              ? Image.asset("assets/images/item1_basket_favorite.png")
                              : favourites[index]['name'] == 'Чизкейк'
                              ? Image.asset("assets/images/item2.png", width: 134)
                              : favourites[index]['name'] == 'ВОДКА BELUGA'
                              ? Image.asset("assets/images/item3.png", width: 134)
                              : favourites[index]['name'] == 'ВИНО АЛЬМА ВЕЛЛИ'
                              ? Image.asset("assets/images/item4.png", width: 134)
                              : Container(),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favourites[index]['name'],
                                    style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                                  ),
                                  Text(
                                    favourites[index]['weight'],
                                    style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: "Overpass-Bold", fontSize: 14),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: SizedBox(
                                      width: 140,
                                      height: 50,
                                      child: Text(
                                        favourites[index]['description'],
                                        maxLines: 3,
                                        style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-Bold", fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(color: Color(0xFFF7FF88), borderRadius: BorderRadius.circular(12)),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '${favourites[index]['price']} ₽',
                                        style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 30),
                itemCount: favourites.length)

            // Column(
            //   children: [
            //     SizedBox(height: 30),

            //     SizedBox(height: 30),
            //     FavoriteOrderItems2()
            //   ],
            // ),
            ),
      ),
    );
  }
}
