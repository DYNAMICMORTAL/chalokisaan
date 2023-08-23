import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late User _user;
  late String _messageText;
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser!;
  }

  void _sendMessage() async {
    final message = _messageText.trim();
    if (message.isNotEmpty) {
      _messageController.clear();
      await _firestore.collection('messages').add({
        'text': message,
        'sender': _user.uid,
        'timestamp': FieldValue.serverTimestamp(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _auth.signOut();
              Navigator.pop(context); // Go back to previous screen after logout
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: _firestore.collection('messages').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                final messages = snapshot.data?.docs;
                List<Widget> messageWidgets = [];
                for (var message in messages!) {
                  final messageText = message['text'];
                  final messageSender = message['sender'];

                  final messageWidget = MessageBubble(
                    text: messageText,
                    isMe: messageSender == _user.uid,
                  );
                  messageWidgets.add(messageWidget);
                }
                return ListView(
                  reverse: true,
                  children: messageWidgets,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    onChanged: (value) {
                      setState(() {
                        _messageText = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  MessageBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            isMe ? 'You' : 'Sender',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(30.0) : Radius.circular(0.0),
              topRight: isMe ? Radius.circular(0.0) : Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: isMe ? Colors.lightBlueAccent : Colors.grey,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatScreen(),
  ));
}
