import 'package:anim/chatgpt.dart';
// import 'package:anim/form.dart';
import 'package:flutter/material.dart';

class Tabbarprep extends StatefulWidget {
  const Tabbarprep({super.key});

  @override
  State<Tabbarprep> createState() => _TabbarprepState();
}

class _TabbarprepState extends State<Tabbarprep>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Tabbar",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Chatgpt(),
                      ));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                  size: 40,
                ))
          ],
        ),
        body: Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: const [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
              ],
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Container(
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}
