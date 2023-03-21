// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/view_models/article_view_model.dart';

enum Status { initial, loading, loaded, }

class ArticleListViewModel extends ChangeNotifier {
  ArticleViewModel viewModel =
      ArticleViewModel(category: 'general', articlers: []);
  Status status = Status.initial;

  ArticleListViewModel(){
    getNews('general');
  }

  Future<void> getNews(String category) async {
    status = Status.loading;
    notifyListeners();
    viewModel.articlers = await NewService().fetchNews(category);
    status = Status.loaded;
    notifyListeners();
  }
}
