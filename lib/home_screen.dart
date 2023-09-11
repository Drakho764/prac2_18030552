import 'package:flutter/material.dart';
import 'package:prac2_18030552/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero animation"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 20,
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    index: index,
                  ),
                ),
              );
            },
            child: Hero(
              tag: index,
              child: Image.network(
                  "https://raw.githubusercontent.com/ravi84184/ravi84184/master/Minions/${index + 1}.jpg"),
            ),
          );
        },
      ),
    );
  }
}