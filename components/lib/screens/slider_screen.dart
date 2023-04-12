import 'package:components/theme/app_theme.dart';
import "package:flutter/material.dart";

import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key:key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title:  const Text('Sliders && Checks'),
      ),
      body:Column(
        children: [
          
          Slider(
            min: 50,
            max: 400,
            activeColor: Color.fromARGB(255, 40, 6, 121),
      
            value: _sliderValue, 
            onChanged: (value) {
              _sliderValue = value;
              setState(() {
                
              });
            }
            ),

              /* Switch(
                value:_sliderEnabled, 
              onChanged:  (value) => setState(() {_sliderEnabled = value;})
              ),
 */


            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value ?? true; })
             
              ),
              
              SwitchListTile(
               activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value ?? true; })
                ),

      
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage('https://wallpapercave.com/wp/aqTmxnF.jpg'),
                  fit:BoxFit.contain,
                  width: _sliderValue,
                  ),
              ),
            ),
        ],
      
      ),
    );
  }
}