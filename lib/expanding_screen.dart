import "package:flutter/material.dart";

class ExpandingWidget extends StatefulWidget {
  const ExpandingWidget({Key? key}) : super(key: key);

  @override
  State<ExpandingWidget> createState() => _ExpandingWidgetState();
}

class _ExpandingWidgetState extends State<ExpandingWidget> {
  double heightOfContainer = 120;
  List<double> list = [120, 200];
  bool showContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (heightOfContainer == list[0]) {
                    heightOfContainer = list[1];
                  } else {
                    heightOfContainer = list[0];
                  }
                  showContainer = !showContainer;
                });
              },
              child: Container(
                height: heightOfContainer,
                width: 100,
                decoration: BoxDecoration(border: Border.all()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                ),
                if (showContainer == true) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                  ),
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
