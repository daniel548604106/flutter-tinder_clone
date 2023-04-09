import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('initState function ran');

    return Scaffold(
        appBar: AppBar(title: Text("choose location")),
        body: ElevatedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('click')));
  }
}
