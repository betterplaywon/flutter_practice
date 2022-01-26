import 'package:flutter/material.dart';
import 'package:contact/model/model_movie.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  CarouselImage({required this.movies});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget>images;
  late List<String>keywords;
  late List<bool> likes;
  int currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((e) => Image.asset('./images/' + e.poster)).toList();
    keywords = movies.map((e) => e.keyword).toList();
    likes = movies.map((e) => e.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
        ),
      // carouselSlider error 발생
      CarouselSlider(items: images, onPageChanged: (index) {
        setState(() {
          _currentPage = index;
          _currentKeyword = keywords[_currentPage];
        });
      }])
      ],
    ));
  }

}
