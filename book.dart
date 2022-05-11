class BookList {
  String imageUrl;
  String writers;
  String title;

  BookList(
      {required this.imageUrl, required this.writers, required this.title});

}

var bookLists = [
  BookList(
    imageUrl: 'assets/images/trending_book_1.png',
    writers: 'Guy Kawasaki',
    title: 'Enchantment',
  ),
  BookList(
    imageUrl: 'assets/images/trending_book_2.png',
    writers: 'Aaron Mahnke',
    title: 'Lore',
  ),
  BookList(
    imageUrl: 'assets/images/trending_book_3.png',
    writers: 'Spencer Johnson, M.D',
    title: 'Who Moved My Cheese',
  ),
  BookList(
    imageUrl: 'assets/images/trending_book_3.png',
    writers: 'Spencer Johnson, M.D',
    title: 'Who Moved My Cheese',
  ),
];


List<BookList> authorsList = [
  BookList(
    imageUrl: 'assets/images/StephenKing.png',
    writers: 'American author',
    title: 'Stephen King',
  ),
  BookList(
    imageUrl: 'assets/images/conan-doyle.png',
    writers: 'British writer',
    title: 'Arthur Conan Doyle',
  ),
  BookList(
    imageUrl: 'assets/images/GeorgeOrwell.png',
    writers: 'English novelist',
    title: 'George Orwell',
  ),
  BookList(
    imageUrl: 'assets/images/StephenKing.jpg',
    writers: 'American author',
    title: 'Stephen King',
  ),
];
