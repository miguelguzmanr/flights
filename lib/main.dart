import 'package:flutter/material.dart';
import 'tabler_icons.dart';
import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flights',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const Onboarding(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  List<Widget> pages = const <Widget>[
    // Home(),
    // Profile(),
    // Ticket(),
    // Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Floating Action Button',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(TablerIcons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(TablerIcons.search), label: 'Search'),
          NavigationDestination(
              icon: Icon(TablerIcons.ticket), label: 'Boarding Pass'),
          NavigationDestination(
              icon: Icon(TablerIcons.notifications), label: 'Notifications'),
        ],
        // Set destination page
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     currentPage = index;
        //   });
        // },
        // selectedIndex: currentPage,
        // Hide navigation bar labels
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
