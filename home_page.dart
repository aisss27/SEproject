import 'package:e_book_app/models/book.dart';
import 'package:e_book_app/screens/home/components/authors.dart';
import 'package:e_book_app/screens/home/components/recent_book.dart';
import 'package:e_book_app/screens/home/components/trending_book.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';





class HomePage extends StatefulWidget {
  static const nameRoute = '/homePage';
   HomePage({Key? key}) : super(key: key);

 final List<BookList> searchBooks = bookLists;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Aisultan!',
                  style: semiBoldText16,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Your Favorite Book',
            hintStyle: mediumText12.copyWith(color: greyColor),
            fillColor: greyColorSearchField,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            isCollapsed: true,
            contentPadding: EdgeInsets.all(18),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            RecentBook(
              image: 'assets/images/recentbook_1.png',
              title: 'The Magic',
              percent: 0.7, textOfRecent: '70% completed',
            ),
            SizedBox(width: 20),
            RecentBook(
              image: 'assets/images/recentbook_2.png',
              title: 'The Martian',
              percent: 0, textOfRecent: 'Waiting...',
            ),
          ],
        ),
      );
    }

    Widget trendingBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookLists
              .asMap()
              .entries
              .map(
                (MapEntry map) => TrendingBook(
                  info: bookLists[map.key],
                ),
              )
              .toList(),
        ),
      );
    }


    Widget listOfAuthors() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookLists
              .asMap()
              .entries
              .map(
                (MapEntry map) => Authors(
              info: authorsList[map.key],
            ),
          )
              .toList(),
        ),
      );
    }



    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(height: 30),
                searchField(),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Recent Book',
                    style: semiBoldText16.copyWith(color: blackColor),
                  ),
                ),
                SizedBox(height: 12),
                recentBook(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Trending Now',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),
          trendingBook(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Popular authors',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),
          listOfAuthors(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) => InkWell(

  );


  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
  
}
