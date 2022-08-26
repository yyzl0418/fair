import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DropdownButtonDemo extends StatelessWidget {
  const DropdownButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButtonDemo"),
      ),
      body:   Center(
        child: DropdownButton<String>(
          value: "one",
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          icon: const Icon(Icons.arrow_downward),
          items: [
            DropdownMenuItem<String>(
              value: "one",
              child: Text("one"),
            ),
            DropdownMenuItem<String>(
              value: "two",
              child: Text("two"),
            ),
            DropdownMenuItem<String>(
              value: "three",
              child: Text("three"),
            )
          ], onChanged: (String? value) {

        },
        ),
      ),
    );
  }
}
