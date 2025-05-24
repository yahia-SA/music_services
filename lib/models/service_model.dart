class ServiceModel {
  final String title;
  final String description;
  final String background;
  final String icon;


  ServiceModel({
    required this.title,
    required this.description,
    required this.background,
    required this.icon,

  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      background: json['background'] ?? '',
      icon: json['icon'] ?? '',
    );
  }
  Map toJson() {
    return {
      'title': title,
      'description': description,
      'background': background,
      'icon': icon,
    };
  }
}
