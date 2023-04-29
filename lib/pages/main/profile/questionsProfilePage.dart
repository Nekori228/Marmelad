import 'dart:math';

import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/appBar/questionsAppBar.dart';

class questionsProfilePage extends StatelessWidget {
  questionsProfilePage({Key? key}) : super(key: key);

  var listQuestion = [
    {'title': '1', 'description': '2'},
    {'title': '3', 'description': '4'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100.0), child: QuestionsAppBar()),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 40,
                    margin: const EdgeInsets.only(left: 20),
                    child: ExpansionWidget(
                      initiallyExpanded: false,
                      titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
                        return Material(
                          color: const Color(0xFF1F1F1F),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(isExpaned ? 0 : 12),
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(isExpaned ? 0 : 12),
                          ),
                          child: InkWell(
                            onTap: () => {
                              toogleFunction(
                                animated: true,
                              ),
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      listQuestion[index]['title']!,
                                      style:
                                          TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontSize: 16, fontFamily: 'Overpass-SemiBold'),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: pi * (animationValue + 2) / 2,
                                    child: const Icon(
                                      Icons.arrow_circle_left,
                                      size: 20,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    alignment: Alignment.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      content: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFF0D0D0D),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomRight: Radius.circular(12),
                            topLeft: Radius.circular(0),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  listQuestion[index]['description']!,
                                  style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 30);
                },
                shrinkWrap: true,
                itemCount: listQuestion.length)),
      ),
    );
  }
}
