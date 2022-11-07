import 'package:flutter/material.dart';

class WidgetDetay extends StatefulWidget {
  final int veri;

  WidgetDetay(this.veri);

  @override
  _WidgetDetayState createState() => _WidgetDetayState();
}

class _WidgetDetayState extends State<WidgetDetay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.veri.toString(),
              style: TextStyle(fontSize: 150.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
