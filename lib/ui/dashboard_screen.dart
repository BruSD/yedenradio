import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = '/';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_from_queue,
                      color: Colors.grey,
                      size: 50.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.monetization_on,
                      color: Colors.green,
                      size: 50.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Card(
              elevation: 0,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/image/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Прямая трансляция',
                      style:
                          TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.play_arrow,
                      size: 50.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
        ],
      )),
    );
  }
}
