import 'package:flutter/material.dart';
import 'package:instaclone/config/config.dart';
import 'package:instaclone/pages/Profiles.dart';
import 'package:instaclone/providers/users.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:instaclone/widgets/UserThumb.dart';
import 'package:instaclone/widgets/UserThumbs.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Users(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: themeLight(),
        darkTheme: themeDark(),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        themeMode: ThemeMode.system,
        routes: {
          '/profile': (context) => Profile(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget with WidgetsBindingObserver {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;

  Future<http.Response> fetchAlbum() {
    return http.get('https://jsonplaceholder.typicode.com/albums/1');
  }

  didChangePlatformBrightness() {
    final Brightness brightness =
        WidgetsBinding.instance.window.platformBrightness;
    Provider.of<Users>(context, listen: false)
        .setDarkMode(brightness == Brightness.dark);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Provider.of<Users>(context, listen: false).getUsers();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    var users = Provider.of<Users>(context).getUsersList();
    return Scaffold(
      bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 56,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Icon(null),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 175,
            top: -30,
            child: Container(
              width: 70,
              height: 70,
              child: Stack(
                children: [
                  Image.asset("assets/btn.png"),
                  Positioned(
                      top: 16,
                      left: 16,
                      child: Image.asset("assets/btn_icon.png")),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(child: UserThumbs(users: users)),
      ),
    );
  }
}
