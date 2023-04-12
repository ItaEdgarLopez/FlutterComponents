import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return   CupertinoAlertDialog(
            title:const  Text('titulo'),
            content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Es el contendio '),
              SizedBox(height: 10),
              FlutterLogo(
                size: 200,
              )
            ],
          ),
           actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')),
                TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ok')
                ),
          ],
            
          );
        }
        );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (contex) {
        return AlertDialog(
          elevation: 5,
          title: const Text('titulo'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Es el contendio '),
              SizedBox(height: 10),
              FlutterLogo(
                size: 200,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(contex),
                child: const Text('Cancelar')
                ),
                TextButton(
                onPressed: () => Navigator.pop(contex),
                child: const Text('ok')
                ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Mostrar alerta', style: TextStyle(fontSize: 20)),
              ),
              //   onPressed: () => displayDialogAndroid(context))),
              onPressed: () => Platform.isAndroid 
                              ? displayDialogAndroid(context) 
                              :  displayDialogIOS(context),
                              )
                              ),

      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
