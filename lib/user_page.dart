import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:education/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerName;
  late TextEditingController controllerAge;
  late TextEditingController controllerDate;

  @override
  void initState() {
    super.initState();

    controllerName = TextEditingController();
    controllerAge = TextEditingController();
    controllerDate = TextEditingController();
  }

  @override
  void dispose() {
    controllerName.dispose();
    controllerAge.dispose();
    controllerDate.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Добавить пункт'),
    ),
    body: Form(
      key: formKey,
      child: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextFormField(
            controller: controllerName,
            decoration: decoration('Адрес'),
            validator: (text) =>
            text != null && text.isEmpty ? 'Not valid input' : null,
          ),
          const SizedBox(height: 24),
          TextFormField(
            controller: controllerAge,
            decoration: decoration('Номер телефона'),
            keyboardType: TextInputType.number,
            validator: (text) => text != null && int.tryParse(text) == null
                ? 'Not valid input'
                : null,
          ),
          const SizedBox(height: 24),
          TextFormField(
            controller: controllerDate,
            decoration: decoration('Специализация'),
            validator: (text) =>
            text != null && text.isEmpty ? 'Not valid input' : null,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            child: Text('Отправить'),
            onPressed: () {
              final isValid = formKey.currentState!.validate();

              if (isValid) {
                final user = User(
                  name: controllerName.text,
                  phone_number: int.parse(controllerAge.text),
                  spec: controllerDate.text,
                );

                createUser(user);

                final snackBar = SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Заявка успешно отправлена!',
                    style: TextStyle(fontSize: 24),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    ),
  );
  InputDecoration decoration(String label) => InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
  );

  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id = docUser.id;

    final json = user.toJson();
    await docUser.set(json);
  }
}