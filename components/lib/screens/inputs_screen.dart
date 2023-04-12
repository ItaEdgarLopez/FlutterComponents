import 'package:components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': ' Lopez',
      'email': 'ita.edgar.lopez@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario', formValues: formValues, fromProperty: 'first_name',
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario', formValues: formValues, fromProperty: 'last_name',
                  ),
              const    SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress, formValues: formValues, fromProperty: 'email',
                  ),
            const     SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario', formValues: formValues, fromProperty: 'password',
                    isPassword: true,
                  ),
              const    SizedBox(
                    height: 30,
                  ),

                  DropdownButtonFormField<String>( 
                    value: 'Admin',
                    items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Dveloper', child: Text('Dveloper')),
                    DropdownMenuItem(value: 'Jr. developer', child: Text('Jr. developer')),
                  ], onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                  }
                  ),
                  


                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: const Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ))),
    );
  }
}
