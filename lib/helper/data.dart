import 'package:flutter/cupertino.dart';
import 'package:news_wamz/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = [];
  CategoryModel categoryModel;

  //1
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl = 'https://plus.unsplash.com/premium_photo-1674777843119-dea5ff80f469?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80';
  category.add(categoryModel);

  //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1519758965401-328f73031806?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80";
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://i2-prod.liverpoolecho.co.uk/incoming/article24187385.ece/ALTERNATES/s1200c/0_GettyImages-1398699507.jpg";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);



  return category;
}