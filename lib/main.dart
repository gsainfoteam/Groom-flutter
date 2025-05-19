import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:groom_flutter/pages/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Groom-App", home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.start,
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [ListPage(), ListPage(), ListPage()],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.chat)),
          Tab(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
