import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              SizedBox(height: 10),
              Text(
                quote.author,
                style: TextStyle(fontSize: 18, color: Colors.grey[600], fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 10),
              Divider(height: 10),
              FlatButton.icon(onPressed: () {
                delete(quote.id);
              },
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),),
            ],
          ),
        )
    );
  }
}
