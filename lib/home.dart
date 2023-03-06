import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.search),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_horiz_outlined),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: const TabBarView(children: [
          Text('Search'),
          Text('Chat'),
          Text('Status'),
          Text('Call'),
        ]),
      ),
    );
  }
}
