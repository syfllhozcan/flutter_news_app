import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/pages/home/home.dart';
import 'package:news_app/view_models/article_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ArticleListViewModel(),),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:const NewsPage(),
      ),
    );
  }
}

