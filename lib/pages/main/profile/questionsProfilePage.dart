import 'dart:math';

import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/appBar/questionsAppBar.dart';

class questionsProfilePage extends StatelessWidget {
  questionsProfilePage({Key? key}) : super(key: key);

  var listQuestion = [
    {'title': 'Что значит «лаунж-бар»?', 'description': '     Лаунж-бар – это, довольно-таки, новый формат заведений, весьма популярный. В таких заведениях, в частности в нашем – вы сможете отдохнуть от городского шума и ежедневных забот, здесь приглушенный свет, тихая и спокойная музыка, а самое главное располагающая атмосфера. \n     Из преимуществ: \n     1) Есть услуга предоставления кальяна. \n     2) Огромный ассортимент алкогольной продукции. \n     3) Обслуживание на баре ничем не отличается от обслуживания за столиком! Вы также можете заказать кальян, еду и разнообразные напитки. Вас также обслужат и проконсультируют по меню. \n     4) Особенности интерьера, которые больше способствуют расслаблению и отдыху в стиле “Loft”. Это современный стиль, при котором характерна открытая планировка – минимум стен, максимум пространства. Также, наличие удобных и мягких диванов, низких столов и кресел.'},
    {'title': 'Каков график работы заведения?', 'description': '     В будние дни график работы с 12:00 до 00:00, пятницу и субботу с 12:00 до 3:00. В выходные мы работаем в клубном формате, который начинается с 22:00 до 3:00, то есть до самого закрытия. А также, хотим упомянуть, что с понедельника по пятницу с 12:00 до 17:00 бизнес ланч!'},
    {'title': 'Можно ли забронировать столик в будний день?', 'description': '     Да, вполне! В нашем заведении необязательно ждать выходных, чтобы сделать бронь! Вы можете заранее позаботиться о том, за каким именно столиком вы хотите хорошо провести время со своим любимым человеком, друзьями или семьей! Если вы хотите уединения, то можете выбрать VIP-зону, а если хотите провести уютный вечер – забронируйте место у окна, и пока вы будете ужинать, не упустите момента полюбоваться любимым городом!'},
    {'title': 'Какие акции у вас бывают? ', 'description': '     В честь Вашего дня Рождения, а также 5 дней до и после него – действует скидка 10% на все позиции в чеке. Отдельно наша команда от лица всего заведения «Marmelad» поздравит Вас и вручит вкусный коктейль!'},
    {'title': 'Есть ли у вас специальные программы?', 'description': '     Специальные программы у нас распространяются на каждый праздник. Это 8 марта, 23 февраля, Новый год и даже Хэллоуин. Они включают в себя: живую музыку, после которой обязательно будет продолжение вечера в клубном формате, а также будет специальная фотозона и тематические коктейли!'},
    {'title': 'Можно ли сделать доставку на дом? ', 'description': '     Ответ: всегда да. У нас действует система быстрых платежей, так же вы можете оплатить заказ непосредственно курьеру наличкой, либо по карте. Стоимость доставки по городу бесплатна от 1500 рублей!'},
    {'title': 'Какова концепция кухни у заведения? ', 'description': '     Основная направленность кухни – азиатская. Также, из расчета на большую проходимость, мы закладываем в кухню дополнительно несколько блюд других направленностей. У нас есть как и итальянская так, и элементы европейской кухни. Мы работаем над разнообразием наших блюд, и постоянно улучшаем меню.'},
    {'title': 'Как осуществляется подбор персонала? Есть ли открытые вакансии? ', 'description': '     Подбор персонала осуществляется непосредственно руководителем заведения. Мы рассматриваем: \n     1. Общительных и открытых сотрудников; \n     2. Компетентных и пунктуальных; \n     3. Нам важно, чтобы сотрудник был готов пройти обучение по сервису, обладал знаниями меню, включая барное; \n     4. Одно из важных качеств, на наш взгляд – это любовь к людям. Мы берём в свою команду даже и без опыта работы! Можете оставить свое резюме на ресепшене или отправить его нам на почту: «почта..».'},
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

class ss extends StatelessWidget {
  const ss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
