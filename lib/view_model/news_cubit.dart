import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view_model/news_state.dart';
import 'package:news_app/core/result_api.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsLoading());
  void getArticles() async {
    emit(NewsLoading());
    final result = await ApiManager.getArticles();
    switch (result) {
      case Success<NewsModel>():
        var articles = result.data.articles ?? [];
        emit(NewsSuccess(articles));
        break;
      case Error<NewsModel>():
        emit(NewsError('Failed to load articles'));
        break;
    }
  }
}
