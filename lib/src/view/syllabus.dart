



import 'package:agile/src/view/chapter.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: SyllabusItem(),
    );
  }
}

class SyllabusItem extends StatefulWidget {

  @override
  _SyllabusItem createState() => _SyllabusItem();
}

class _SyllabusItem extends State<SyllabusItem> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: itemList(size),
    );
  }


  List<Widget> itemList(Size size) {
    List<Widget> list = new List();

    for(int i = 1; i<20; i++){
      list.add(GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chapter()),
          );
        },
        child: Container(

            height: size.height*0.1,
            width: size.width*0.9,
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: new Text(
                "Cuong"+i.toString())),
      ));
    }


    return list;
  }


}
