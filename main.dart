import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COLOROUT'),
        backgroundColor: Color.fromARGB(255, 8, 8, 8),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            color: Color.fromARGB(255, 161, 160, 160),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: Text("TEST"),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(child: Column(children: [
        Image(image: NetworkImage("https://i.pinimg.com/564x/dc/e4/33/dce433011f1727aeea0374686b7d3457.jpg")),
        Text(
          'I WANT SHOP IN',
        style: TextStyle(fontSize: 45),
        ),
       Row(children: [
        Text('ENTER_____' ,textAlign: TextAlign.center, style: TextStyle(fontSize: 35)),
       Text('TYPE YOUR LOCATION' , textAlign: TextAlign.justify,style: TextStyle(fontSize: 20)),
       
     ]),
    ]),)
      );
     
     
  }
}
