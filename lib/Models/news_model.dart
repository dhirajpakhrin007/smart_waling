import 'dart:convert';

class Product {
  int news_id;
  String title;
  String news_date;
  String feature_img;
  String link;
  String detail;
  String created_at;
  Product({
    this.news_id,
    this.title,
    this.news_date,
    this.feature_img,
    this.link,
    this.detail,
    this.created_at,
  });

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(
        news_id: map['news_id'],
        title: map['title'],
        news_date: map['news_date'],
        feature_img: map['feature_img'],
        link: map['link'],
        detail: map['detail'],
        created_at: map['created_at']);
  }
}
