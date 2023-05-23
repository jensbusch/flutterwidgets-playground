import 'package:flutter/material.dart';
import 'Widgets/CardPage.dart';

class WidgetCard extends Card {
  String _title ="";
  String _subtitle ="";

  WidgetCard(String title, String subtitle, {super.key})

  {
    _title = title;
    _subtitle = subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(Icons.card_membership),
              title: Text(_title),
              subtitle: Text(_subtitle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Details'),
                  onPressed: ()
                   {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const CardPage()));
                   },
                ),
                const SizedBox(width: 8),
      
              ],
            ),
          ],
        ),
      ),
    );
  }
}
