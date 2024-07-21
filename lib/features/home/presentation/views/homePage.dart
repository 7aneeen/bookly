import 'package:booklyapp/core/utils/asset.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/carousel_slider.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/list_of_books.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100B20),
      appBar: CustomAppBar(
          title: Row(
            children: [
              Image.asset(
                AssetsData.logo,
                scale: 3,
              ),
            ],
          ),
          backgroundColor: Color(0xff100B20),
          height: 80),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Carouselslider(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Best seller",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BookListView(),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Color backgroundColor;
  final double height;

  const CustomAppBar(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      toolbarHeight: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            // Action for notifications
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
