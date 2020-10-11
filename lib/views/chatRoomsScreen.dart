import 'package:flutter/material.dart';
import 'package:intro/helper/authenticate.dart';
import 'package:intro/helper/constants.dart';
import 'package:intro/helper/helperfunctions.dart';
import 'package:intro/services/auth.dart';
import 'package:intro/views/search.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthMethods authMethods = new AuthMethods();

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  getUserInfo() async {
    Constants.myName = await HelperFunctions.getUserNameSharedPreference();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // theme: ThemeData(primaryColor: PrimaryColor),
        title: Text(
          'WhatsNew',
          style: TextStyle(
              fontFamily: 'Oswald',
              color: Colors.yellow[300],
              fontStyle: FontStyle.italic,
              fontSize: 24),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              authMethods.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Authenticate()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          )
        ],
        // backgroundColor: PrimaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message_rounded),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));
        },
      ),
    );
  }
}
