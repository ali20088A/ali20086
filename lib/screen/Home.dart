import 'package:flutter/material.dart';
import 'package:thanki_app/widgets/post_widgrt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: SizedBox(
          width: 500,
          height: 45,
          child: Image.asset('images/logo2.png'),
        ),
        leading: Image.asset(
          'images/add.png',
        ),
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          // Image.asset('images/send.png'),
        ],
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostWidget();
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
