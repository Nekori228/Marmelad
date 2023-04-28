import 'dart:math';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsItem extends StatefulWidget {
  const QuestionsItem({Key? key}) : super(key: key);

  @override
  State<QuestionsItem> createState() => _QuestionsItemState();
}

class _QuestionsItemState extends State<QuestionsItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      margin: EdgeInsets.only(left: 20),
      child: ExpansionWidget(
        initiallyExpanded: false,
        titleBuilder: (double animationValue, _, bool isExpaned,
            toogleFunction) {
          return Material(
            color: Color(0xFF1F1F1F),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(0),
            ),
            child: InkWell(
              onTap: () => {
                toogleFunction(
                  animated: true,
                ),
                print(animationValue)
                // debugPrint(jsonDecode(info_post.body)
                //     .toString()),
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Что значит «лаунж-бар»?',
                        style: TextStyle(
                            color:
                            Color(0xFFFFFFFF).withOpacity(0.47),
                            fontSize: 16,
                            fontFamily: 'Overpass-SemiBold'),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi * (animationValue + 2) / 2,
                      child: Icon(
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
          decoration: BoxDecoration(
            color: Color(0xFF0D0D0D),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(12),
              topLeft: Radius.circular(0),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'ЗаказF готовится как можно скорее loremloremloremloremloremlorem',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.47),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
