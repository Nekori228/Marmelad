import 'package:flutter/material.dart';

class HelpBooking extends StatelessWidget {
  const HelpBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(child: Carousel()),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "assets/images/frame1.png",
    "assets/images/frame2.png",
    "assets/images/frame3.png"
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/button.png"),
                      ),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HelpBooking()));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.black.withOpacity(0),
                          ),
                          child: SizedBox(
                            width: 160,
                            height: 50,
                            child: Center(
                              child: Text(
                                "НАЧАТЬ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/button.png"),
                      ),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HelpBooking()));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.black.withOpacity(0),
                          ),
                          child: SizedBox(
                            width: 160,
                            height: 50,
                            child: Center(
                              child: Text(
                                "НАЧАТЬ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Color(0xFFF7FF88) : Color(0xFFFFFFFF),
          shape: BoxShape.circle),
    );
  });
}
