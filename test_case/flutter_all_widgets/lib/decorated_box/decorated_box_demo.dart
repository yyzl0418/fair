import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DecoratedBoxDemo extends StatelessWidget {
  const DecoratedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTableDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(-0.5, -0.6),
                      radius: 0.15,
                      colors: <Color>[
                        Color(0xFFEEEEEE),
                        Color(0xFF111133),
                      ],
                      stops: <double>[0.9, 1.0],
                    ),
                  ),
                  child: Text("DecoratedBox",style: TextStyle(color: Colors.red),),
                ),
              ),
            ),
          ),
          Expanded(
            child: FairWidget(name: "DecoratedBoxDemo",path: "assets/bundle/fair/lib_decorated_box_decorated_box_demo.fair.json",),
          ),
        ],
      ),
    );
  }
}
