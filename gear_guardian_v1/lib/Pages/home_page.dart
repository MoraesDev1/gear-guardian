import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: const Text(
                  "Option 1",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(85, 158, 158, 158),
                thickness: 1,
                endIndent: 15,
                indent: 15,
                height: 0,
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: const Text(
                  "Option 2",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(85, 158, 158, 158),
                thickness: 1,
                endIndent: 15,
                indent: 15,
                height: 0,
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: const Text(
                  "Option 3",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(85, 158, 158, 158),
                thickness: 1,
                endIndent: 15,
                indent: 15,
                height: 0,
              ),
              const Spacer(),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 230, 230, 230),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 196, 177, 6),
          title: const Text("Gear Guardian"),
          centerTitle: true,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Home Page",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
