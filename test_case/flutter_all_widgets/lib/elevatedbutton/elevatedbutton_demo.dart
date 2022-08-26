import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ElevatedButtonDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                    onPressed: null,
                    child: const Text('Disabled'),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FairWidget(
              path: "assets/bundle/fair/lib_elevatedbutton_elevatedbutton_demo.fair.json",
              name:"ElevatedButtonDemo",
            ),
          ),
        ],
      ),
    );
  }
}
