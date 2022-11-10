import 'package:flutter/material.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return ListView(
              children: <Widget>[
                FlutterLogo(
                  size: orientation == Orientation.portrait ? 200.0 : 100.0,
                ),
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "phone"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "password"),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Signin"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Signup"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(child: Text("need help ?"))
              ],
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: GirisSayfasi()));
}
