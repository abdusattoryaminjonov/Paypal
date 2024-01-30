import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  final String? name;
  final String? version;

  const DetailsPage({super.key,this.name,this.version});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  _bottonBack(){
    // List  list = ["${widget.name}","${widget.version}"];
    List  list = ["Flutter","3.16.9"];
    Navigator.of(context).pop(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${widget.name}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "${widget.version}",
              style: TextStyle(fontSize: 20),
            ),
            MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
              child: Text("ButtonBack"),
                onPressed:(){
                  _bottonBack();
                }
            )
          ],
        ),
      ),
    );
  }
}
