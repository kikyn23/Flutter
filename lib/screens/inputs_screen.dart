import 'package:flutter/material.dart';

import '../widgtes/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Enrique',
      'last_name': 'Camelo',
      'email': 'Enrique@gmail.',
      'password': '1223'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre de usuario',
                      formProperty: 'first_name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      formProperty: 'last_name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo del usuario',
                      keyBoardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      campoPassword: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'Superuser', child: Text('Superuser')),
                        DropdownMenuItem(value: 'Junior', child: Text('Junior'))
                      ],
                      onChanged: (value) {
                        formValues['role'] = value ?? 'Admin';
                      },
                    ),
                    ElevatedButton(
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar')),
                        ),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()) {
                            return;
                          }
                        })
                  ],
                ),
              )),
        ));
  }
}
