import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DefaultTextStyleDemo extends StatelessWidget {
  const DefaultTextStyleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTransitionDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                color: Colors.white,
                child: Directionality(
                    textDirection: TextDirection.rtl, // TextDirection.ltr
                    child: DefaultTextStyle(
                      style: TextStyle(fontSize: 14.0, color: Colors.red, decoration: TextDecoration.underline),
                      child: Text(
                        '演示Directionality演示Directionality演示Directionality演示Directionality演示Directionality',
                        style: TextStyle(fontSize: 12.0, inherit: false, color: Colors.blue),
                      ),
                      maxLines: 2,
                      softWrap: true,
                    ))),
          ),
          Expanded(
            child: FairWidget(
              path: "assets/bundle/fair/lib_default_text_style_default_text_style_demo.fair.json",
              name: "DefaultTextStyleDemo",
            ),
          ),
        ],
      ),
    );
  }
}
