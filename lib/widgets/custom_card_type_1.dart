import 'package:flutter/material.dart';

import 'package:componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('tarjeta'),
            subtitle: Text('Sit duis consequat voluptate id ut culpa. Magna sunt exercitation eiusmod velit eiusmod voluptate consectetur laborum culpa occaecat consequat ipsum officia culpa.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                ),              
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}