import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'quote.dart';

void main() =>
    runApp(MaterialApp(
        home: QuoteList()
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(id: 1, text: "The greatest glory in living lies not in never falling, but in rising every time we fall.", author: "Nelson Mandela"),
    Quote(id: 2, text: "The way to get started is to quit talking and begin doing.", author: "Walt Disney"),
    Quote(id: 3, text: "Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.", author: "Steve Jobs"),
    Quote(id: 4, text: "If life were predictable it would cease to be life, and be without flavor.", author: "Eleanor Roosevelt"),
    Quote(id: 5, text: "If you look at what you have in life, you\'ll always have more. If you look at what you don\'t have in life, you\'ll never have enough.", author: "Oprah Winfrey"),
    Quote(id: 6, text: "If you set your goals ridiculously high and it\'s a failure, you will fail above everyone else\'s success.", author: "James Cameron"),
    Quote(id: 7, text: "Life is what happens when you\'re busy making other plans.", author: "John Lennon"),
  ];

  void deleteQuote(quoteId) {
    setState(() {
      quotes =  quotes.where((quote) { return quote.id != quoteId; }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: quotes.map((quote) => QuoteCard(
                quote: quote,
                delete: deleteQuote
              )).toList()),
            )
          ),
    );
  }
}
