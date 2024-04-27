import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String number;

  // UserModel({required this.id, required this.name, required this.numer});
  UserModel( this.id, this.name, this.number);
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(1, "Amro Shekh Zain", "+201012726198"),
    UserModel(2, "Ghiath Mutlack", "+90537564774"),
    UserModel(3, "Samer Tawel", "+201012726198"),
    UserModel(4, "Mohammed Rami", "+201012726198"),
    UserModel(5, "Ahmed Ramzyy", "+201012726198"),
    UserModel(1, "Amro Shekh Zain", "+201012726198"),
    UserModel(2, "Ghiath Mutlack", "+90537564774"),
    UserModel(3, "Samer Tawel", "+201012726198"),
    UserModel(4, "Mohammed Rami", "+201012726198"),
    UserModel(5, "Ahmed Ramzyy", "+201012726198"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0
            ),
            child: Container(
              height: 1,
             decoration: BoxDecoration(color: Colors.green[100]),
            ),
          ),
          itemCount: users.length),
    );
  }
}

Widget buildUserItem(UserModel user) => Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Text(
              '${user.id}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                '${user.number}',
                style: TextStyle(color: Colors.green),
              )
            ],
          )
        ],
      ),
    );
