import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact list',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recents'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.dialpad),
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(),
              ),
              for (var i = 0; i < 20; i++)
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 35,
                      ),
                      title: Text('Usama Sarwar'),
                      subtitle: Text('+92 310 000 777 3'),
                      trailing: Icon(
                        Icons.info,
                        color: Colors.white,
                      )),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
