//데이터 관리를 쉽게 하기위한 class

class Movie {
  final String title;
  final String keyword;
  final String picture;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
  :title = map['title'],
  keyword = map['keyword'],
  picture = map['picture'],
  like = map['like'];

  @override
  String toString() => 'Movie<$title:$keyword>';
}