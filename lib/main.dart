import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './view_models/AuthViewModel.dart';
import './view_models/ChannelsViewModel.dart';
import './views/Screens.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthServices(),
        ),
        ChangeNotifierProvider.value(
          value: ChannelsViewModel(),
        ),
        // ChangeNotifierProvider.value(
        //   value: MessagesViewModel(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: PostsProvider(),
        // ),
      ],
      child: Raabita(),
    );
  }
}

class Raabita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Raabita',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ps", "AF"),
          Locale("fa", "IR"),
          Locale("en", "US")
        ],
        locale: Locale("ps", "AF"),
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    Channels(),
    Messages(),
    UserSettings(),
  ];

  void _onPageChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onNavbarItemTapped(int currentIndex) {
    _pageController.jumpToPage(currentIndex);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رابطه'),
        centerTitle: true,
        elevation: 0.0,
        leading: _currentIndex == 0
            ? IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: () {},
              )
            : null,
      ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChange,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onNavbarItemTapped,
        iconSize: 20.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room_rounded),
            label: 'چینلونه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'پیغامونه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'تنظیمات',
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 1
          ? FloatingActionButton(
              child: Icon(Icons.edit_outlined),
              onPressed: () {},
            )
          : null,
    );
  }
}
