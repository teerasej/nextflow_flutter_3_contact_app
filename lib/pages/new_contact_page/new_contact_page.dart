import 'package:contact_app/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewContactPage extends StatelessWidget {
  NewContactPage({super.key});

  var controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Name:'),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (String value) {
                controller.name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (String value) {
                controller.email = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  controller.save();
                },
                child: Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
