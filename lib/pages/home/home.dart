import 'package:book_aviyan_final/consts/colors.dart';
import 'package:book_aviyan_final/pages/home/home_widgets/home_book.dart';
import 'package:book_aviyan_final/pages/home/home_widgets/home_category.dart';
import 'package:book_aviyan_final/pages/home/home_widgets/promotion_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.dashboard),
                  CircleAvatar(backgroundColor: AppColor.mainColor),
                ],
              ),
              Text(
                "Explore".toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    hintText: "Search all books ..",
                    suffixIcon: Icon(CupertinoIcons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              PromotionCarousel(),
              SizedBox(height: 10),
              HomeCategory(),
              SizedBox(height: 10),
              HomeBooks()
            ],
          ),
        ),
      ),
    );
  }
}
