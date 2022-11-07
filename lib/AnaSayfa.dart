import 'package:flutter/material.dart';
import 'package:odev_5/WidgetListe.dart';
import 'package:odev_5/SayfaDetay.dart';
import 'package:odev_5/WidgetDetay.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var selectedValue = 0;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return Row(children: <Widget>[
          Expanded(
            child: WidgetListe(20, (value) {
              if (isLargeScreen) {
                selectedValue = value;
                setState(() {});
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SayfaDetay(value);
                  },
                ));
              }
            }),
          ),
          isLargeScreen
              ? Expanded(child: WidgetDetay(selectedValue))
              : Container(),
        ]);
      }),
    );
  }
}

void main() {
  runApp(MaterialApp(home: AnaSayfa()));
}
