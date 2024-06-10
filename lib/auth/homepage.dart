import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: IconButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "Add");
            },
            icon: const Icon(Icons.add)),
        appBar: AppBar(
          title: Text("My Mission"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 30,
                        child: Image.asset(
                          "assets/images/images.jpg",
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text("Email"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("username"),
                    ],
                    
                  ),
                  
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemBuilder: (BuildContext context, int index) {
              return const ListTile(
                  title: Text("Note title"),
                  subtitle: Text("Note subtitle"),
                  leading: Icon(Icons.watch_later_rounded));
            },
          ),
        ),
      ),
    );
  }
}
