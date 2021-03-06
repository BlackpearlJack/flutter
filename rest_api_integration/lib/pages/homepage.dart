
import 'package:flutter/material.dart';
import 'package:rest_api_integration/models/news_info.dart';
import 'package:rest_api_integration/services/api_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<NewsModel> _newsModel;

  @override
  void initState(){
    _newsModel = APIManager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('News App'),
        ),
        body: Container(
          child: FutureBuilder<NewsModel>(
            future: _newsModel,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data.articles.length,
                    itemBuilder: (context, index) {
                      var article = snapshot.data.articles[index];

                    return Container(
                    height: 100,
                    child: Row(
                      children: <Widget>[
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                article.urlToImage,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(width: 16),
                        Flexible(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(),
                            Text(
                                article.title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                            ),
                            Text(article.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,),
                          ],
                        ))
                      ],
                    ),
                  );
                });
              }
              else
                return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
