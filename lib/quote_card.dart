import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';




class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            // SizedBox(height: 8,),
            Center(
              child: FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  label: Text(
                    'delete quote',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
