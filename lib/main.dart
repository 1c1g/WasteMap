import 'package:education/user_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:education/bottlemap.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:education/papermap.dart';
import 'package:education/glassmap.dart';
import 'package:education/clothesmap.dart';
import 'package:education/plasticbagsmap.dart';
import 'package:education/organicmap.dart';
import 'package:education/ironmap.dart';
import 'package:education/technicmap.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyText2: TextStyle(fontSize: 64, color: Colors.white),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.teal.shade700,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    home: showHome ? HomePage() : OnboardingPage(),
  );
}

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 64),
            Text(
              title,
              style: TextStyle(
                color: Colors.teal.shade700,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      padding: const EdgeInsets.only(bottom: 80),
      child: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 1);
        },
        children: [
          buildPage(
            color: Colors.white,
            urlImage: 'assets/page1.jpg',
            title: 'Проблема экологии',
            subtitle:
            'На свалку выбрасывается большое количество отходов, которое можно переработать.',
          ),
          buildPage(
            color: Colors.white,
            urlImage: 'assets/page2.0.jpg',
            title: 'Как помочь экологии?',
            subtitle:
            'Вы можете найти и сдать вторичные материалы с помощью WasteMap.',
          ),
        ],
      ),
    ),
    bottomSheet: isLastPage
        ? TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal.shade700,
        minimumSize: const Size.fromHeight(80),
      ),
      child: const Text(
        'Начинаем!',
        style: TextStyle(fontSize: 24),
      ),
      onPressed: () async {
        // navigate directly to home page
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('showHome', true);

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    )
        : Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const Text('Пропустить'),
            onPressed: () => controller.jumpToPage(1),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: WormEffect(
                spacing: 16,
                dotColor: Colors.black26,
                activeDotColor: Colors.teal.shade700,
              ),
              onDotClicked: (index) => controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ),
            ),
          ),
          TextButton(
            child: const Text('Дальше'),
            onPressed: () => controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
    ),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(onTap: (index){},
            isScrollable: true,
            physics: BouncingScrollPhysics(),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.white24),
            tabs: [
              Tab(text: 'Пластик'),
              Tab(text: 'Стекло'),
              Tab(text: 'Бумага'),
              Tab(text: 'Одежда'),
              Tab(text: 'Полиэтилен'),
              Tab(text: 'Органика'),
              Tab(text: 'Металл'),
              Tab(text: 'Техника'),
            ],
          ),
          title: Text('WasteMap'),
          actions: [
            //IconButton(
              //icon: Icon(FontAwesomeIcons.instagram),
              //onPressed: () async{
                //Route route = MaterialPageRoute(builder: (context) => WebViewApp());
                //Navigator.push(context, route);
                //final url = 'https://instagram.com/planetsavers.kg';
                //if (await canLaunch(url)){
                  //await launch(url);
                //}
              //},
            //),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                Route route = MaterialPageRoute(builder: (context) => UserPage());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            //MyMaps(),
            Home(),
            Home1(),
            Home2(),
            Home3(),
            Home4(),
            Home5(),
            Home6(),
            Home7()
          ],
        ),
      ),
    );
  }
}