import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yera/src/app/app.dart';
import 'package:yera/src/extensions/custom_color_scheme.dart';
import 'package:yera/src/ui/views/account/account_view.dart';
import 'package:yera/src/ui/views/category/category_view.dart';
import 'package:yera/src/ui/views/explore/explore_view.dart';
import 'package:yera/src/ui/views/main/main_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
          controller: mainViewTabController,
          tabBar: CupertinoTabBar(
            border: const Border(
                top: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            )),
            activeColor: Theme.of(context).colorScheme.black,
            iconSize: 28.0,
            backgroundColor: Theme.of(context).colorScheme.scaffoldColor,
            onTap: (currentIndex) {
              
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.layers),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.compass),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user),
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return const MainView();
              case 1:
                return  const CategoryView();
              case 2:
                return const ExploreView();
              case 3:
                return const AccountView();
              default:
                return const MainView();
            }
          },
        );
  }
}
