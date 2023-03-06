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
                child: Icon(Icons.camera_alt),
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
          actions: [
            Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              child: Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(
                  value: "1",
                  child: Text('NewGroup'),
                ),
                PopupMenuItem(
                  value: "1",
                  child: Text('Setting'),
                ),
                PopupMenuItem(
                  value: "1",
                  child: Text('Logout'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('Milan'),
                subtitle: Text("What are you doing"),
                trailing: Text('6:30 pm'),
              );
            },
          ),
          Text('Status'),
          ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('Milan'),
                subtitle: Text(
                    index / 2 == 0 ? "Missed audio call" : "Missed video call"),
                trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
              );
            },
          ),
        ]),
      ),
    );
  }
}
