import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';

import '../../widgets/appBar/viewItemAppBar.dart';

class ViewComment extends StatelessWidget {
  final String nameObject;

  const ViewComment({Key? key, required this.nameObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewItemAppBar(),
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nameObject,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Overpass-Bold",
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '200гр',
                      style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.36), fontFamily: "Overpass-Bold", fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 250,
                  child: Center(
                    child:
                    nameObject == 'Фреш роллы с креветкой'
                        ? Image.asset("assets/images/item1.png")
                        : nameObject == 'Чизкейк'
                        ? Image.asset("assets/images/item2.png", width: 134)
                        : nameObject == 'ВОДКА BELUGA'
                        ? Image.asset("assets/images/item3.png")
                        : nameObject == 'ВИНО АЛЬМА ВЕЛЛИ'
                        ? Image.asset("assets/images/item4.png", width: 134)
                        : Container(),
                  ),
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.account_circle, color: Colors.white, size: 40),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ЕВГЕНИЯ СЕРГЕЕВА',
                                    style: TextStyle(color: Colors.white, fontFamily: "Overpass-Bold", fontSize: 15),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      comments[nameObject][index]['rating'] >= 1 ? const Icon(Icons.star, color: Colors.yellow, size: 15) : const Icon(Icons.star_border, color: Colors.yellow, size: 15),
                                      comments[nameObject][index]['rating'] >= 2 ? const Icon(Icons.star, color: Colors.yellow, size: 15) : const Icon
                                        (Icons.star_border, color: Colors.yellow, size: 15),
                                      comments[nameObject][index]['rating'] >= 3 ? const Icon(Icons.star, color: Colors.yellow, size: 15) : const Icon
                                        (Icons.star_border, color: Colors.yellow, size: 15),
                                      comments[nameObject][index]['rating'] >= 4 ? const Icon(Icons.star, color: Colors.yellow, size: 15) : const Icon
                                        (Icons.star_border, color: Colors.yellow, size: 15),
                                      comments[nameObject][index]['rating'] >= 5 ? const Icon(Icons.star, color: Colors.yellow, size: 15) : const Icon
                                        (Icons.star_border, color: Colors.yellow, size: 15),
                                      const SizedBox(width: 5),
                                      Text(
                                        comments[nameObject][index]['date'],
                                        style: TextStyle(color: Colors.white.withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            comments[nameObject][index]['comments'],
                            style: const TextStyle(color: Colors.white, fontFamily: "Overpass-SemiBold", fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                  itemCount: comments[nameObject] != null ? comments[nameObject].length : 0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
