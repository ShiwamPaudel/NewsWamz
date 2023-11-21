import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_wamz/helper/data.dart';
import 'package:news_wamz/models/category_model.dart';
import '../helper/news.dart';
import '../models/article_model.dart';
import 'article_view.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles =[];
  bool _loading = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();

  }

  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('News', style: TextStyle(color: Colors.black),),
            Text('Wamz', style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
      body: _loading? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ): SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[

              ///Categories
              Container(
                height: 70,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return CategoryTile(
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName,
                    );
                  }
                ),
              ),

              ///Blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemBuilder: (context, index){
                      return BlogTile(
                          imageUrl: articles[index].urlToImage ?? '',
                          title: articles[index].title ?? '',
                          desc: articles[index].description ?? '',
                      );
                    },
                  itemCount: articles.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(imageUrl: imageUrl, width: 120, height: 60, fit: BoxFit.cover,)),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black26),
                child: Text(categoryName, style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;

  BlogTile({
    required this.imageUrl,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                  child: Image.network(imageUrl)),
              Text(title, style: const TextStyle(
                fontSize: 18,
                  fontWeight: FontWeight.w800,
                color: Colors.black87
              ),
              ),
              const SizedBox(height: 4,),
              Text(desc, style: const TextStyle(
                color: Colors.black54,
              ),
              ),
            ],
          ),
        ),
    );
    
  }
}

