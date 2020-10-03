import 'dart:convert';

MainCategoryData mainCategoryDataFromJson(String str) => MainCategoryData.fromJson(json.decode(str));

String mainCategoryDataToJson(MainCategoryData data) => json.encode(data.toJson());

class MainCategoryData {
  MainCategoryData({
    this.mainCategories,
  });

  List<MainCategory> mainCategories;

  factory MainCategoryData.fromJson(Map<String, dynamic> json) => MainCategoryData(
    mainCategories: List<MainCategory>.from(json["Main_categories"].map((x) => MainCategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Main_categories": List<dynamic>.from(mainCategories.map((x) => x.toJson())),
  };
}

class MainCategory {
  MainCategory({
    this.id,
    this.title,
    this.image,
  });

  int id;
  String title;
  String image;

  factory MainCategory.fromJson(Map<String, dynamic> json) => MainCategory(
    id: json["id"],
    title: json["title"],
    image: json["Image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "Image": image,
  };
}
