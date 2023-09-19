import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return "Please enter email";
    }

    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Please enter a valid email";
    }

    return null;
  }

  String? checkName(value) {
    if (value!.isEmpty) {
      return "Please enter name";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: buildFormfiled(
                      'Enter your name', 'e.g., John Doe', Icons.person),
                  validator: checkName),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validateEmail,
                decoration: buildFormfiled(
                    'Enter your email', 'e.g., email.com', Icons.email),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: Text("Submit"))
            ],
          )),
    );
  }

  buildFormfiled(label, hint, icon) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      labelStyle: TextStyle(color: Colors.grey),
      hintStyle: TextStyle(color: Colors.grey),
    );
  }
}
