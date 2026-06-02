class BlogModel {
  final int id;
  final String date;
  final String src;
  final String title;
  final String subTitle;
  final List<String> paragraphs;

  BlogModel({
    required this.id,
    required this.date,
    required this.src,
    required this.title,
    required this.subTitle,
    required this.paragraphs,
  });
}
