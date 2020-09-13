



import 'package:flutter/material.dart';

class Chapter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: ChapterItem(),
    );
  }
}

class ChapterItem extends StatefulWidget {

  @override
  _ChapterItem createState() => _ChapterItem();
}

class _ChapterItem extends State<ChapterItem> {


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
          Navigator.pop(context);
        },
        child: Container(
            color: Colors.orangeAccent,
            padding: EdgeInsets.all(20),
            child: new Text(
                "Chapter"+i.toString())),
      ));
    }


    return list;
  }


}
