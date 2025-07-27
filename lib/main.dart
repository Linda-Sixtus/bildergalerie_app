import 'package:flutter/material.dart';
import 'gallery.dart';
import 'user_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sunimo gallery',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 101, 189, 189)),
      ),
      home: const MyHomePage(title: 'Sunimo Galerie'),
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
  int currentIndex = 0;

  List<Widget> p15screens = [GalleryPage(), UserInfoPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(200, 209, 130, 255),
                const Color.fromARGB(200, 255, 213, 240),
                const Color.fromARGB(200, 112, 229, 255),
              ],
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Center(
        child: IndexedStack(index: currentIndex, children: p15screens),
      ),
       bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Image.asset('assets/Egg_3D.png', height: 50), label: "Sunimo"),
            NavigationDestination(icon: Image.asset('assets/SUNIMO_MOTHER_Ai.png', height: 50), label: "Über Sunimo"),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
    );
  }
}
