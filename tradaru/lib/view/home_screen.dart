import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tradaru/model/product_model.dart';
import 'package:intl/intl.dart';
import 'package:tradaru/view/detail_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> mainList = List();
  int selectedIndex = 0;
  Product product;

  @override
  void initState() {
    super.initState();
    mainList.addAll(productsShoes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(Icons.apps_rounded),
          onPressed: () {},
        ),
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
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.search,
            color: Colors.black,
          ))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Our Product',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        Text("Sort by"),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  elevation: 0.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    mainList.clear();
                    setState(() {
                      mainList.addAll(productsShoes);
                    });
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        "https://img.icons8.com/plasticine/100/000000/sneakers.png",
                        height: 20,
                        width: 20,
                      ),
                      Text("Sneakers"),
                    ],
                  ),
                ),
                RaisedButton(
                  elevation: 0.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    mainList.clear();
                    setState(() {
                      mainList.addAll(productsWatch);
                    });
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        "https://img.icons8.com/offices/30/000000/apple-watch-apps.png",
                        height: 20,
                        width: 20,
                      ),
                      Text("Watch"),
                    ],
                  ),
                ),
                RaisedButton(
                  elevation: 0.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    mainList.clear();
                    setState(() {
                      mainList.addAll(productsBackpack);
                    });
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        "https://img.icons8.com/cotton/64/000000/tourist-backpack--v1.png",
                        height: 20,
                        width: 20,
                      ),
                      Text("Backpack"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 8,
                    childAspectRatio: (1 / 1.8),
                  ),
                  itemCount: mainList.length,
                  itemBuilder: (context, index) {
                    Product model = mainList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(product: model)));
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    _diskon(model.rating),
                                    _favorite(model.rating)
                                  ],
                                ),
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: new BoxDecoration(
                                          color: model.color,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(60))),
                                      child: Text(''),
                                    ),
                                    Container(
                                      child: Image.network(
                                        model.imgUrl,
                                        height: 120,
                                        width: 120,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  model.brandName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900]),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  NumberFormat.simpleCurrency(
                                    locale: 'en_us',
                                    decimalDigits: 2,
                                  ).format(model.price),
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(width: 10.0),
                                    SmoothStarRating(
                                      rating:
                                          //products[index]
                                          model.rating,
                                      color: Color(0xfff4a548),
                                      borderColor: Color(0xfff4a548),
                                      size: 12.0,
                                      starCount: 5,
                                      allowHalfRating: true,
                                      isReadOnly: true,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                        "(${model.rating.toDouble().toStringAsFixed(1)})",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.grey)),
                                  ],
                                )
                              ])),
                    );
                  }),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          setState(() {});
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.blue[200],
          ),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.home_filled,
                  color: selectedIndex == 0
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.favorite,
                  color: selectedIndex == 1
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.assignment,
                  color: selectedIndex == 2
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.person,
                  color: selectedIndex == 3
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }

  _diskon(double rating) {
    if (rating > 3.0) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.blue[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              '30%',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          width: 30.0,
        ),
      );
    } else {
      return Container();
    }
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
}
