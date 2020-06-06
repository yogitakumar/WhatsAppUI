import 'package:flutter/material.dart';
import 'camera.dart';
import 'calls.dart';
import 'chat.dart';
import 'status.dart';
import 'camera.dart';

void main() {
  runApp(MyApp());
}

class chatWidget extends StatefulWidget {
  @override
  chatWidgetApp createState() => new chatWidgetApp();
}

class chatWidgetApp extends State<chatWidget> {
  @override
  Widget build(BuildContext context) {
    Text("Chat tab clicked");
    Container(
      height: 100,
      width: 100,
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  TabController _tabController;

  IconData fabIcon;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this)..addListener(() {
      setState(() {
        switch(_tabController.index){
          case 0:
            break;
          case 1:
            fabIcon=Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_enhance;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                print("Search contacts");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add_call,
                color: Colors.white,
              ),
              onPressed: () {
                print("Add Calls");
              },
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.amber,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                child:
                    Text("CHAT", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              new Tab(
                child: Text("STATUS",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              new Tab(
                child: Text("CALLS",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
            controller: _tabController,
            indicatorColor: Colors.white,
            // indicatorSize: TabBarIndicatorSize.tab,
          ),
          bottomOpacity: 1,
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new camera(),
            new chat(),
            new status(),
            new calls(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            print("Open Chats");
          },
          child: Icon(fabIcon),//Icon(Icons.chat),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
