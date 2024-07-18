import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/commentsection.dart';

class ForumPage5 extends StatefulWidget {
  @override
  _ForumPage5State createState() => _ForumPage5State();
}

class _ForumPage5State extends State<ForumPage5> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _postController = TextEditingController();

  void _addPost() {
    if (_postController.text.isNotEmpty) {
      _firestore.collection('posts5').add({
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
      appBar: AppBar(
        title: Text("Forum"),
        backgroundColor: Color.fromRGBO(176, 214, 230, 0.498),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: _firestore.collection('posts5').orderBy('timestamp', descending: true).snapshots(),
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
                    decoration: InputDecoration(
                      labelText: "New Post",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
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
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ExpansionTile(
        title: Text(content),
        subtitle: Text(
          "${timestamp.day}/${timestamp.month}/${timestamp.year} ${timestamp.hour}:${timestamp.minute}",
          style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
        ),
        children: [
          CommentsSection(postId: postId),
        ],
      ),
    );
  }
}
