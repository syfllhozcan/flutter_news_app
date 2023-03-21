import 'package:flutter/material.dart';
import 'package:news_app/constands/app_colors.dart';
import 'package:news_app/constands/failed_picture.dart';
import 'package:news_app/constands/string_text.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/view_models/article_list_view_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

//double h = 844;
//double w = 390;

class _NewsPageState extends State<NewsPage> {
  List<Category> categoryList = [
    Category('business', 'İş'),
    Category('entertainment', 'Eğlence'),
    Category('general', 'Genel'),
    Category('health', 'Sağlık'),
    Category('science', 'Bilim'),
    Category('sports', 'Spor'),
    Category('technology', 'Teknoloji'),
  ];

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ArticleListViewModel>(context);
    //final device_width = MediaQuery.of(context).size.width;
    //final device_height = MediaQuery.of(context).size.height;
    //double x = (device_height / h);
    //double y = (device_width / w);
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            size: 28,
            color: Colors.black,
          ),
          backgroundColor: AppColors.primary,
          title: const Text(
            AppStringText.appBarTitle,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 28,
              color: AppColors.balack,
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: getStatusWideget(vm));
  }

  List<GestureDetector> getCategoryList(ArticleListViewModel vm) {
    List<GestureDetector> list = [];
    for (int i = 0; i < categoryList.length; i++) {
      list.add(GestureDetector(
        onTap: () => vm.getNews(categoryList[i].key),
        child: Card(
          color: AppColors.balack,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              categoryList[i].title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ));
    }
    return list;
  }

  Widget getStatusWideget(ArticleListViewModel vm) {
    switch (vm.status.index) {
      case 2:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: getCategoryList(vm),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: vm.viewModel.articlers.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse(vm.viewModel.articlers[index].url ?? '')),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      //width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.secondry,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              vm.viewModel.articlers[index].urlToImage ??
                                  FailedPicture.failedPicture,
                              fit: BoxFit.cover,
                              height: 200,
                              width: 280,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: const Text(
                  AppStringText.appLatest,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: vm.viewModel.articlers.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () => launchUrl(
                          Uri.parse(vm.viewModel.articlers[index].url ?? ''),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.secondry,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 380,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  vm.viewModel.articlers[index].urlToImage
                                       ?? FailedPicture.failedPicture,
                                  height: 110,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    vm.viewModel.articlers[index].title ?? ' ',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    vm.viewModel.articlers[index].description ?? '',
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: AppColors.balack,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      )),
                ),
              ),
            ],
          ),
        );
      default:
        return const Center(
          child: CircularProgressIndicator(
            color: AppColors.balack,
          ),
        );
    }
  }
}
