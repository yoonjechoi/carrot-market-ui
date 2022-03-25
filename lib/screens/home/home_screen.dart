import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todos/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('좌동'),
            SizedBox(width: 4.0),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.list_dash),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: const PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text(
            'HomeScreen body 영역(index:0)',
            style: textTheme().headline2,
          ),
        ),
      ),
    );
    return const Center(
      child: Text('homeScreen'),
    );
  }
}
