import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/view_model/news_cubit.dart';
import 'package:news_app/view_model/news_state.dart';

void main() {
  test('starts in the loading state', () {
    final cubit = NewsCubit();
    addTearDown(cubit.close);

    expect(cubit.state, isA<NewsLoading>());
  });
}
