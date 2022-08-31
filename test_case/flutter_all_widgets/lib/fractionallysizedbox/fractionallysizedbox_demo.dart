import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBoxDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox.expand(
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                alignment: FractionalOffset.center,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 4,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_fractionallysizedbox_fractionallysizedbox_demo.fair.json",),),
        ],
      ),
    );
  }
}
