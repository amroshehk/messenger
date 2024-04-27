import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 20,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/12536857?s=96&v=4"),
            ),
            SizedBox(width: 20.0),
            Text("Chat",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 16.0,
              backgroundColor: Colors.indigoAccent,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 16.0,
                  ))),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 8.0, top: 8.0, end: 20.0, bottom: 8.0),
            child: CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.indigoAccent,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 16.0,
                    ))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               Container(
                 height: 120,
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) => buildStoryItem(),itemCount: 10,separatorBuilder:(index, dimensions) => SizedBox(width: 10,),),
               ),
                SizedBox(
                    height: 20.0),
                Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildChatItem(),itemCount: 15,separatorBuilder:(index, dimensions) => SizedBox(width: 10,),),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

Widget buildStoryItem() => Container(
    width: 75,
    child: Column(
      children: [
        Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 75,
                  height: 75,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/12536857?s=96&v=4"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: EdgeInsetsDirectional.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: const CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ]),
        Text("Amro Shekh Zain",textAlign: TextAlign.center)
      ],
    ),
  );
Widget buildChatItem() =>  Row(
  children: [
    Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 75,
              height: 75,
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/12536857?s=96&v=4"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: EdgeInsetsDirectional.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: const CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ]),
    const SizedBox(width: 10),
    Expanded(child: Column(
      children: [
        const Text(" kdjkjad alnkd asjkd nas dnasj kdasjn jdakja jasd",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,)
        ,
        Row(
          children: [
            Expanded(flex:2,child: Text(" kdjkjad alnkd asjkd nas dnasj kdasjn jdakja jasd",style: TextStyle(fontWeight: FontWeight.w400,overflow: TextOverflow.ellipsis),maxLines: 2,)),
            Container(
                padding: EdgeInsetsDirectional.all(5),
                child: CircleAvatar(backgroundColor: Colors.blue,radius: 4,)),
            Expanded(
                flex:1,child: Text("02:04 pm",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400,overflow: TextOverflow.ellipsis),maxLines: 1,))
          ],
        )
      ],
    ))
  ],
);

