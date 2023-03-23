import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options =  const ['victor', 'carolina', 'cecilia', 'cristian', 'cristobal'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview2Screen'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          leading: const Icon(Icons.star_border_outlined, color: Colors.indigo),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          onTap: () => {},
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}