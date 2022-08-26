import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBoxDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 400,
                width: 300,
                color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
              child: FairWidget(
            path: "assets/bundle/fair/lib_fittedbox_fittedbox_demo.fair.json",
          ))
        ],
      ),
    );
  }
}
