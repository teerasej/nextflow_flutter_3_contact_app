import 'package:contact_app/pages/Controller/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewContractPage extends StatelessWidget {
  NewContractPage({super.key});

  var controller = Get.put(ContractController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contract'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'UserName'),
              onChanged: (String value){
                controller.username = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value){
                controller.password = value;
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
