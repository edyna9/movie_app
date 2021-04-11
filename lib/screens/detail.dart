import 'package:dwmgex/models/movie.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/detail/update');
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [

            Column(
              children: [
                Container(
                child: Image.network(
                  movie.poster,
                ),
                  height: 250,
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                movie.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue),
              ),
            ),


            Text(
              movie.year + ' - '+ movie.runtime + ' min',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blue),
            ),

            Text(
              movie.kind.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.blue),
            ),

            Text('Actors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
            ),

            Text(
              movie.actors.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blue),
            ),
           

            Text('Synopsis',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
            ),

            Text(
              movie.plot,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blue),
            ),

            Text('Release Date',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
            ),






            Text(
              movie.releaseDate.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blue),
            ),


            Text('Raitings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
            ),


            Column(
                  children: [
                    Container(
                    child: Image.network(
                      movie.ratings[0]['logo'],
                    ),
                      height: 40,
                    ),
                  ],
                ),

                Text(
                  movie.ratings[0]['source'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),
                Text(
                  ' value :' + movie.ratings[0]['value'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),



                Column(
                  children: [
                    Container(
                    child: Image.network(
                      movie.ratings[1]['logo'],
                    ),
                      height: 25,
                    ),
                  ],
                ),

                Text(
                  movie.ratings[1]['source'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),
                Text(
                  ' value :' + movie.ratings[1]['value'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),


            Column(
                  children: [
                    Container(
                    child: Image.network(
                      movie.ratings[2]['logo'],
                    ),
                      height: 40,
                    ),
                  ],
                ),

                Text(
                  movie.ratings[2]['source'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),
                Text(
                  ' value :' + movie.ratings[2]['value'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
                ),
          ],
        ),
      ),
    );
  }
}