import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin:const  EdgeInsets.only(right: 8),
            child: const  CircleAvatar(
              radius:25.0,
              child: Text('SL'),
              backgroundColor: Colors.indigo
            ),
          )
        ],
      ),
      body: const  Center(
         child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage('https://www.xtrafondos.com/wallpapers/iron-man-atacando-6063.jpg'),
         )
      ),
    );
  }
}