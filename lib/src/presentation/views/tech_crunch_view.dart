import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tech_crunch/src/configs/router/app_router.gr.dart';

import '../../domain/model/articles.dart';
import '../../utils/extensions/scroll_controller.dart';
import '../cubits/remote_articles/remote_articles_cubit.dart';
import '../widget/article_widget.dart';

@RoutePage()
class TechCrunchView extends HookWidget {
  const TechCrunchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remoteArticlesCubit = BlocProvider.of<RemoteArticlesCubit>(context);
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.onScrollEndsListener(() {
        remoteArticlesCubit.getBreakingNewsArticles();
      });

      return scrollController.dispose;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TechCrunch News',
          //style: TextStyle(color: Colors.black),
        ),
        actions: [
          GestureDetector(
            //onTap: () => appRouter.push(const SavedArticlesViewRoute()),
           onTap: () => context.router.push(const SavedArticlesView()),

            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(Ionicons.bookmark),
            ),
          ),
        ],
      ),
      body: BlocBuilder<RemoteArticlesCubit, RemoteArticlesState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case RemoteArticlesLoading:
              return const Center(child: CupertinoActivityIndicator());
            case RemoteArticlesFailed:
              return const Center(child: Icon(Ionicons.refresh));
            case RemoteArticlesSuccess:
              return _buildArticles(
                scrollController,
                state.articles,
                state.noMoreData,
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildArticles(
      ScrollController scrollController,
      List<Article> articles,
      bool noMoreData,
      ) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) => ArticleWidget(
              article: articles[index],
              onArticlePressed: (e) =>  context.router.push(ArticleDetailsView(article: e)),
              // onArticlePressed: (e) => AutoRouter.of(context).push(
              //   ArticleDetailsViewRoute(article: e),
              // ),
            ),
            childCount: articles.length,
          ),
        ),
        if (!noMoreData)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 14, bottom: 32),
              child: CupertinoActivityIndicator(),
            ),
          )
      ],
    );
  }
}