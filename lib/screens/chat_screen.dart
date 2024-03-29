import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This Works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //snapshot returns stream which return new values  whehever data changes
          FirebaseFirestore.instance
              .collection('chats/JUEchvThqtcqrSoJH03l/messages')
              .snapshots()
              .listen((event) {
            data.documents.forEach((document) {});
          });
        },
      ),
    );
  }
}
