import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless

//material app
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal, 
        brightness: Brightness.dark)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cyril Map')
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                DrawerHeader(child: 
                  Text('Menu')
                ),
                ListTile(
                  title: Text('Logout')
                ),
              ],
            )
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('heeeor');
              },
              child: Icon(Icons.add)
            
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(
            icon: Icon(Icons.home), 
            label: 'Home'
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected:(int value,) {
          print(value);
          selectedIndex: value;
        },
        //selectedIndex: 1,
        
        
        
        
        ),
      ),
    );
  }
}