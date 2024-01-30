import 'package:flutter/material.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _openDetails() async{
    String name = 'Dart';
    String version = '3.2.1';

    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(name:name,version:version);
    }));
  }

  Future _openDetails2() async{
    String name = 'Dart';
    String version = '3.2.1';

    List list= await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(name:name,version:version);
    }));

    if(list.length != 0 ){
      for(int i=0;i<list.length;i++){
        print(list[i]);
      }
    }else{
      print("Return 0");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Click"),
          onPressed: (){
            _openDetails2();
          },
        ),
      ),
    );
  }
}
