import 'package:flutter/material.dart';
import 'chat_model.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
    int totalMsg=0;
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          new Divider(
            height: 10,
          ),
          new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage((chatData[index].avatarurl)),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    chatData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(chatData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 5),
                    child: new Text(
                      chatData[index].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  new Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        // shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(chatData[index].notifications.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold))),
                  ),
                  
                ],
              )),
        ],
      ),
    );
  }
}
