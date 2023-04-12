import 'package:flutter/material.dart';

import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text('Card widget'),
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2( imageUrl: 'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
          SizedBox(height: 10),
          CustomCardType2(name: 'luis', imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/Difficult-landscape-photo-to-take.jpg',),
          SizedBox(height: 10),
          CustomCardType2( imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/Defining-landscape-photography-waterfall.jpg',),

        ],
      )
    );

  }
}
