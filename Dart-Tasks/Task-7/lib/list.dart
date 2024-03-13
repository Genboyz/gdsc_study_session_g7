import 'DataModel.dart';

List<String> Trending = [
  'Breakfast at tiffany\'s',
  'The martian',
  'The book of art',
  '80/20',
  'Atomic habits',
  'The power of habit',
  'Born a crime'
];

List<String> TreimgURL = [
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/3.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
  'assets/6.jpg',
  'assets/7.jpg',
];
List<String> books = [
  'The Lord of the rings',
  'The Brothers Karamazov',
  'War and Peace',
  'The Road',
  'Austerlitz',
];

List<String> imgURL = [
  'assets/8.jpg',
  'assets/9.jpg',
  'assets/10.jpg',
  'assets/11.jpg',
  'assets/12.jpg',
];
List<String> recommended = [
  'The Line of Beauty',
  'My Brilliant Friend',
  'Life of Pi',
  'Outline',
  'Human Chain',
];

List<String> ReimgURL = [
  'assets/13.jpg',
  'assets/14.jpg',
  'assets/15.jpg',
  'assets/16.jpg',
  'assets/17.jpg',
];
final List<Model> Tdetail = List.generate(
    Trending.length, (index) => Model(Trending[index], TreimgURL[index]));
final List<Model> Rdetail =
    List.generate(books.length, (index) => Model(books[index], imgURL[index]));
final List<Model> Ndetail = List.generate(
    recommended.length, (index) => Model(recommended[index], ReimgURL[index]));
