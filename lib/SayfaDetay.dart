import 'package:flutter/material.dart';
import 'package:odev_5/WidgetDetay.dart';

class SayfaDetay extends StatefulWidget {
  final int veri;

  SayfaDetay(this.veri);

  @override
  _SayfaDetayState createState() => _SayfaDetayState();
}

class _SayfaDetayState extends State<SayfaDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WidgetDetay(widget.veri),
    );
  }
}
