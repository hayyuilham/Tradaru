import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tradaru/model/product_model.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  DetailPage({Key key, this.product}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "X",
              style: TextStyle(color: Colors.deepPurple[800], fontSize: 30.0),
            ),
            Text(
              "E",
              style: TextStyle(color: Colors.blue[200], fontSize: 30.0),
            ),
          ],
        ),
        actions: <Widget>[_favorite(widget.product.rating)],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
                _diskon(widget.product.rating),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: new BoxDecoration(
                          color: widget.product.color,
                          borderRadius: BorderRadius.all(Radius.circular(90))),
                      child: Text(''),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: MediaQuery.of(context).size.height / 4.2,
                      child: Image.network(
                        widget.product.imgUrl,
                        height: 140,
                        width: 140,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Divider(
                    color: Colors.blue[200],
                    height: 50,
                    thickness: 5,
                    indent: 160,
                    endIndent: 160),
                SizedBox(height: 20.0),
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Text(
                                widget.product.brandName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900],
                                    fontSize: 25.0),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Color(0xfff4a548),
                                  size: 20.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                    "(${widget.product.rating.toDouble().toStringAsFixed(1)})",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Built for natural motion, the Nike Flex Shoes',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Size: ',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                            CustomToggleButtons(
                                children: [
                                  Text('US 6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                  Text('US 6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                  Text('US 7',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                  Text('US 8',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                ],
                                color: Colors.black,
                                fillColor: Colors.blue[200],
                                splashColor: Colors.blue[200],
                                renderBorder: false,
                                onPressed: (int index) {
                                  setState(() {
                                    _selected[index] = !_selected[index];
                                  });
                                },
                                isSelected: _selected,
                                spacing: 10.0),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Available Color: ',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey)),
                              SizedBox(
                                height: 30.0,
                                width: 30.0,
                                child: RaisedButton(
                                  elevation: 0.2,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(60.0)),
                                  onPressed: () {},
                                  color: Colors.yellow[300],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                                width: 30.0,
                                child: RaisedButton(
                                  elevation: 0.2,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(60.0)),
                                  onPressed: () {},
                                  color: Colors.red[400],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                                width: 30.0,
                                child: RaisedButton(
                                  elevation: 0.2,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(60.0)),
                                  onPressed: () {},
                                  color: Colors.pink[200],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                                width: 30.0,
                                child: RaisedButton(
                                  elevation: 0.2,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(60.0)),
                                  onPressed: () {},
                                  color: Colors.blue[200],
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 20.0,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              NumberFormat.simpleCurrency(
                                locale: 'en_us',
                                decimalDigits: 2,
                              ).format(widget.product.price),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            RaisedButton(
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              onPressed: () {},
                              color: Colors.grey[100],
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.blue[800],
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text("Add To Cart",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.blue[800])),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _favorite(double rating) {
    if (rating > 4.0) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            FaIcon(FontAwesomeIcons.gratipay, color: Colors.pink, size: 20.0),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.favorite,
          color: Colors.grey,
          size: 20.0,
        ),
      );
    }
  }

  List<bool> _selected = List.generate(4, (_) => false);

  _diskon(double rating) {
    if (rating > 3.0) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Colors.blue[200],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Text(
              '30%',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          width: 50.0,
        ),
      );
    } else {
      return Container();
    }
  }
}
