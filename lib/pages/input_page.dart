import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/validator.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input ")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
        child: Column(
          children: [
            TextFormField(
              controller: email,
              validator: Validator.email,
              decoration: const InputDecoration(
                labelText: "E mail",
              ),
            ),
            TextFormField(
              controller: email,
              validator: Validator.notNullOrEmpty,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Number",
              ),
            ),
            TextFormField(
              controller: email,
              validator: Validator.phone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Phone",
              ),
            ),
          ],
        ),
      ),
    );
  }
}