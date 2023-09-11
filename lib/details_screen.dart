import 'package:flutter/material.dart';
import 'package:prac2_18030552/counter.dart';
import 'package:prac2_18030552/image_carousel.dart';

class DetailsScreen extends StatefulWidget {
  final int index;

  const DetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.amber[200],
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 224, 130),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Minion',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('1 each'),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Descripcion del producto',
                            style: TextStyle(
                                fontSize: 21.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Un minion es el tipo de persona que vive para servir a su amo,'
                            'y cuyo grado de entrega llega a ser tal que puede convertirse en esbirro o '
                            'secuaz de las fechorías de su amo.',
                            style: TextStyle(
                              letterSpacing: 2.0,
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.grey, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 201, 151, 0)),
                                ),
                                height: 70.0,
                                child: ElevatedButton(
                                  onPressed: _toggleFavorite,
                                  child: IconButton(
                                    icon: _isFavorited
                                        ? Icon(
                                            Icons.favorite_border,
                                            color: Colors.amber[300],
                                          )
                                        : Icon(
                                            Icons.favorite,
                                            color: Colors.amber[300],
                                          ),
                                    onPressed: () {},
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 1, 124, 196),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.red,
                                    elevation: 5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 90.0,
                                //minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Añadir al carrito',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 1, 124, 196),
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.red,
                                    elevation: 5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
