import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Home/Post/following.dart';
import 'package:instagram_ui/screens/Home/Post/youdata.dart';

class Postscreen extends StatelessWidget {
  const Postscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Text('Following'),
                  ),
                  Tab(
                    icon: Text('You'),
                  ),
                ]),
          ),
          body: TabBarView(children: [FolowingScreen(), YouScreen()]),
        ));
  }
}
