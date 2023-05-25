import 'package:flutter/material.dart';
import 'package:widgets/Widgets/WidgetPage.dart';
import 'Widgets/CardPage.dart';

class WidgetCard extends Card {
  String _title ="";
  String _subtitle ="";
  Widget _widget = const WidgetPage();

  WidgetCard(String title, String subtitle, Widget widget , {super.key})
  {
    _title = title;
    _subtitle = subtitle;
    _widget = widget;
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
                    MaterialPageRoute(builder: (context) =>  _widget));
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
