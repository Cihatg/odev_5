import 'package:flutter/material.dart';

typedef ItemSelectedCallback = Null Function(int value);

class WidgetListe extends StatefulWidget {
  final int sayac;
  final ItemSelectedCallback onItemSelected;

  const WidgetListe(this.sayac, this.onItemSelected, {super.key});

  @override
  _WidgetListeState createState() => _WidgetListeState();
}

class _WidgetListeState extends State<WidgetListe> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.sayac,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            child: InkWell(
              onTap: () {
                widget.onItemSelected(position);
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      position.toString(),
                      style: const TextStyle(fontSize: 22.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/*void main() { // for try
  runApp(MaterialApp(home: WidgetListe(20, (value) => null)));
}*/
