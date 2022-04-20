import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Demo DevTools'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  icon: Icon(Icons.cloud),
                ),
                Tab(
                  icon: Icon(Icons.beach_access),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [FirstPage(), SecondPage(), ThirdPage()],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        //Todo: Demo layoutexplorer
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Expanded(
              child: Text(
                  'Xin chào các bạn đã tới tham dự buổi seminar tuần này với chủ đề Flutter DevTools'),
            )
          ],
        ),
        // Todo: Demo slow animations
        // const SizedBox(
        //   height: 100,
        //   width: 100,
        //   child: CircularProgressIndicator(
        //     strokeWidth: 3,
        //   ),
        // )
        // Todo: Demo show base lines
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: const [
        //     Text(
        //       'Xin ch ',
        //       style: TextStyle(fontSize: 40),
        //     ),
        //     Text(
        //       'các bạn đã ',
        //       style: TextStyle(fontSize: 18),
        //     ),
        //   ],
        // )
        //Todo: Demo Highlight repaints
        // const SizedBox(
        //   height: 100,
        //   width: 100,
        //   child: CircularProgressIndicator(
        //     strokeWidth: 3,
        //   ),
        // )
        //fix
        // const RepaintBoundary(
        //   child: SizedBox(
        //     height: 100,
        //     width: 100,
        //     child: CircularProgressIndicator(
        //       strokeWidth: 3,
        //     ),
        //   ),
        // )
        //Todo: highlight OverSized Image( check vs size 100 or 200
        Image.asset(
          'assets/image-de2mo.png',
          height: 200,
          width: 200,
        ),
        // Voi anh svg ko anh huong
        SvgPicture.asset(
          'assets/avatar_svg.svg',
          height: 10,
          width: 10,
        )
      ]),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
            ),
            title: Text(
              'Item $index',
              key: Key('text_$index'),
            ),
          );
        });
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
