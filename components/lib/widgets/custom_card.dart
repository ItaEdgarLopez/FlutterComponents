
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon( Icons.phone_android_outlined, color: AppTheme.primary ),
            subtitle: Text('asdasdasdasd adsd asd asd asd asd asd asd asd asd asdasd afadfasd asdasdasdas asd asd as asda sdasd asd as'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel'),
                ), 
                
                TextButton(
                  onPressed: (){},
                  child: const Text('OK')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
