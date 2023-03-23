import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options =  const ['victor', 'carolina', 'cecilia', 'cristian', 'cristobal'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview1Screen'),
      ),
      body: ListView(
        children: [

          ...options.map(
            (e) => ListTile(
                    leading: const Icon(Icons.star_border),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
          ).toList(),
          const Divider()


          /*
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('hola')
          )*/
        ],
      )
    );
  }
}