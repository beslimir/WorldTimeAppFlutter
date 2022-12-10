import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() {
    //simulate a network request (async)
    Future.delayed(Duration(seconds: 3), () {
      print('third');
    });

    //simulate a network request 2 (async)
    Future.delayed(Duration(seconds: 2), () {
      print('second');
    });

    print('first');
  }

  @override
  void initState() {
    print('initState function ran');
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('Build function');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        child: Text('Press me!'),
        onPressed: () {},
      ),
    );
  }
}
