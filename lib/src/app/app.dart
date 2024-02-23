import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yera/src/ui/views/home/home_view.dart';
import 'package:yera/src/ui/views/main/main_view.dart';

final CupertinoTabController mainViewTabController =
    CupertinoTabController(initialIndex: 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void systemUiModeChanger() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    systemUiModeChanger();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: Colors.white, useMaterial3: false),
      // darkTheme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color(0xff121212),
      //   useMaterial3: true,
      // ),
      home: const HomeView(),
    );
  }
}
