import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return bottomNavigation();
  }
}

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _pagesState();
}

class _pagesState extends State<bottomNavigation> {

  int _selectedPage = 0;
  static const List<Widget> _widgetOptions = <Widget>[

  ];

  void onSelectTab(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      routes: {
        '/home': (context) => const MainPage(),
      },
      initialRoute: '/',
      home: Scaffold(
        body: Center(
          child: _widgetOptions[_selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _selectedPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Новости'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined),
                label: 'Материал'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.quiz_outlined),
                label: 'Тесты'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Кабинет'
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}