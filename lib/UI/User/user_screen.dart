import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        flexibleSpace: const Center(
          child: Text(
            "Settings",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(79, 152, 152, 152),
                  ),
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Sleep Timer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          "App Language",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          "Sound Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          "Equilizer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
