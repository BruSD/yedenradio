import 'package:flutter/material.dart';
import 'dart:async';

import 'package:url_audio_stream/url_audio_stream.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "http://31.128.79.192:8000/live";

  @override
  void initState() {
    super.initState();
  }

  static AudioStream stream = new AudioStream("http://31.128.79.192:8000/live");

  Future<void> callAudio(String action) async {
    if (action == "start") {
      stream.start();
    } else if (action == "stop") {
      stream.stop();
    } else if (action == "pause") {
      stream.pause();
    } else {
      stream.resume();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(),
          ),
          Flexible(
            flex: 2,
            child: Card(
              elevation: 10,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          "assets/image/logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  )),
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
