import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.teal,
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => const [
                      PopupMenuItem(value: '1', child: Text("New Group")),
                      PopupMenuItem(value: '2', child: Text("Settings")),
                      PopupMenuItem(value: '3', child: Text(" LogOut")),
                    ])
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
              // Icon(Icons.camera_alt),
              // Text("Chat"),
              // Text("Status"),
              // Text("Calls")
            ],
          ),
        ),
        body: TabBarView(children: [
Text("Camera"),
          ListView.builder(
              itemCount: 5,
              itemBuilder: (index, context) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text("Aima Baig"),
                  subtitle: Text("You are so hot"),
                  trailing: Text("9:26 pm"),
                );
              }),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(

                    backgroundImage: NetworkImage(index ~/ 2 == 0
                        ? 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                        : 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.teal,
                          width: 4,

                        )

                      ),
                    ),
                  ),
                  title: Text(index ~/ 2 == 0 ? "Aima Baig" : "Rector CUI"),
                  subtitle:
                      Text(index ~/ 2 == 0 ? "Just now" : "18 minutes ago"),

                );
              }),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(index ~/ 2 == 0
                        ? 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                        : 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text(index ~/ 2 == 0 ? "Aima Baig" : "Rector CUI"),
                  subtitle: Text.rich(TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        index ~/ 2 == 0
                            ? Icons.call_made_outlined
                            : Icons.call_missed_outgoing,
                        color: index / 2 == 0 ? Colors.teal : Colors.red,
                      ),
                    ),
                    TextSpan(
                        text: index ~/ 2 == 0
                            ? "Today, 5:24 PM"
                            : "Today, 8:24 PM"),
                  ])),
                  trailing: Icon(index ~/ 2 == 0 ? Icons.videocam : Icons.phone,
                      color: Colors.teal),
                );
              }),
        ]),
      ),
    ));
  }
}
