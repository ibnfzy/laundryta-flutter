import 'package:flutter/material.dart';
import 'package:laundryta/screens/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LaundryTa'"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Menu())));
              },
              icon: const Icon(Icons.menu)),
        ],
      ),
      body: const Center(
        child: Text('home'),
      ),
    );
  }
}
