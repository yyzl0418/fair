import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FlutterLogoDemo extends StatelessWidget {
  const FlutterLogoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLogoDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: FlutterLogo(
                textColor: Colors.red,
                size: 50,
              ),
            ),
          ),
          Expanded(
            child: FairWidget(path: "assets/bundle/fair/lib_flutterlogo_flutterlogo_demo.fair.json",),
          ),
        ],
      ),
    );
  }
}
