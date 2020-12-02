import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;

  final String itemImage;
  final String qty;

  final String listbahan;
  final String listbahan2;

  const DetailPage({
    Key key,
    this.itemJudul,
    this.itemImage,
    this.qty,
    this.listbahan,
    this.listbahan2,
  }) : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:
        Text("Detail " + itemJudul, style: TextStyle(color: Colors.white)),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container( decoration : BoxDecoration( borderRadius: BorderRadius.circular(20.0),image: DecorationImage(image:AssetImage(itemImage) ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                itemJudul,
                style: TextStyle(color: Colors.redAccent, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // this is new
                children: <Widget>[
                  Flexible(
                    // this is new
                    child: Text(
                      listbahan,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
