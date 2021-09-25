import 'package:flutter/material.dart';

class CategoriesText {
  String categories;

  CategoriesText({
    required this.categories,
  });
}

final textstyle = TextStyle(
    color: Colors.grey.shade800, fontWeight: FontWeight.w500, fontSize: 20);

List<CategoriesText> categoriesText = [
  CategoriesText(
    categories: "Action",
  ),
  CategoriesText(
    categories: "Thriller",
  ),
  CategoriesText(
    categories: "Romance",
  ),
  CategoriesText(
    categories: "Suspense",
  ),
  CategoriesText(
    categories: "Horror",
  ),
  CategoriesText(
    categories: "Comedy",
  ),
  CategoriesText(
    categories: "Anime",
  ),
  CategoriesText(
    categories: "Crime",
  ),
  CategoriesText(
    categories: "Documentries",
  ),
  CategoriesText(
    categories: "Dramas",
  ),
  CategoriesText(
    categories: "Reality",
  ),
  CategoriesText(
    categories: "Sci-Fi",
  ),
];
