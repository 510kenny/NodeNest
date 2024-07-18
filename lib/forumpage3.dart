import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/commentsection.dart';

class ForumPage3 extends StatefulWidget {
  @override
  _ForumPage3State createState() => _ForumPage3State();
}

class _ForumPage3State extends State<ForumPage3> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _postController = TextEditingController();

  void _addPost() {
    if (_postController.text.isNotEmpty) {
      _firestore.collection('posts3').add({
        'content': _postController.text,
        'timestamp': Timestamp.now(),
      });
      _postController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(144, 205, 233, 0.973),
      appBar: AppBar(title: Text("ready to die forum"),
      backgroundColor: Color.fromRGBO(176, 214, 230, 0.498),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: _firestore.collection('posts3').orderBy('timestamp', descending: true).snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }
                return ListView(
                  children: snapshot.data!.docs.map((doc) {
                    return PostItem(
                      postId: doc.id,
                      content: doc['content'],
                      timestamp: doc['timestamp'].toDate(),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _postController,
                    decoration: InputDecoration(labelText: "New Post"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _addPost,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String postId;
  final String content;
  final DateTime timestamp;

  PostItem({
    required this.postId,
    required this.content,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(content),
      subtitle: Text(timestamp.toString()),
      children: [
        CommentsSection(postId: postId),
      ],
    );
  }
}
