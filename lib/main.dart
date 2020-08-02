import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<data> quotes= [
    data(quote:"Love For All, Hatred For None.",author: "AAAA"),
    data(quote:"Change the world by being yourself.",author: "BBB"),
    data(quote:"Die with memories, not dreams.",author: "CCC"),
  ];

  Widget QuoteCard(data){
    return QuoteCard(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Column( children: quotes.map((data) => QuoteCard(data)).toList()));
}
}

class QuoteCard extends StatelessWidget {

  final data data;
  QuoteCard({this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.fromSTEB(10,10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              data.quote,
              style: TextStyle(color: Colors.grey[500], fontSize: 18),
              ),
              Text(
                data.author,
                style: TextStyle(color: Colors.grey[500], fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
//  List<String> quotes= [
//    'Love For All, Hatred For None.',
//    'Change the world by being yourself.',
//    'Die with memories, not dreams.'
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//      title: Text("Awesome Quotes"),
//        centerTitle: true,
//      ),
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: quotes.map((quote) => Text(quote)).toList()),
//    );
//  }


