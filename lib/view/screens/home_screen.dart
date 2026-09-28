import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view_model/news_cubit.dart';
import 'package:news_app/view_model/news_state.dart';
import 'package:news_app/widgets/item_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App'), centerTitle: true),
      body: BlocBuilder<NewsCubit, NewsState>(
        bloc: NewsCubit()..getArticles(),
        builder: (context, state) {
          if (state is NewsSuccess) {
            return _successView(state.articles);
          }

          if (state is NewsError) {
            return _errorView(
              message: state.message,
              onRetry: () {
                context.read<NewsCubit>().getArticles();
              },
            );
          }

          return _loadingView();
        },
      ),
    );
  }
}

Widget _successView(List<Article> articles) {
  return ListView.builder(
    itemCount: articles.length,
    itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
  );
}

Widget _loadingView() {
  return const Center(child: CircularProgressIndicator());
}

Widget _errorView({required String message, required VoidCallback onRetry}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(message),
        TextButton(onPressed: onRetry, child: const Text('Retry')),
      ],
    ),
  );
}
