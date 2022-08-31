import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FractionalTranslationDemo extends StatelessWidget {
 const FractionalTranslationDemo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionalTranslationDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              alignment: Alignment.center,
              child: FractionalTranslation(
                  translation: Offset(1, 0),
                  child: Text("Hello world")),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_fractionaltranslation_fractionaltranslation_demo.fair.json",)),
        ],
      ),
    );
  }
}
