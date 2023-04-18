import 'package:flutter/material.dart';
import 'package:myapp/utils/log.dart';

void main() {
  Log.info("main - logtest");

// // init preperence
// Helper.initLibrary();

// 강제종료에 대한 예외처리
// runZonedGuarded(() {
  // main에서 async method 사용시 추가
  WidgetsFlutterBinding.ensureInitialized();
  // Timer(const Duration(seconds: 5), () {
  // 상태 변경체크를 하기 위해 Provider로 감싸줌.
  runApp(const MyApp());
  // });
// }, (error, stack;) {
  // Log.error(error);
// });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // BuildContext MyApp 위젯을 부르는 부모위젯의 위치정보를 담음
    // if (Platform.isIOS) {
    //   return const CupertinoApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: CupertinoThemeData(brightness: Brightness.light),
    //     home: MyHomePage(title: 'Flutter Demo Home Page'),
    //   );
    // }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const CustomGridPage(title: 'Custom Grid'),
    );
  }
}

class CustomGridPage extends StatefulWidget {
  const CustomGridPage({super.key, required this.title});

  final String title;

  @override
  State<CustomGridPage> createState() => _CustomGridPage();
}

class _CustomGridPage extends State<CustomGridPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //RGB값에 opacity 적용하기
        //opacity) 0 ~ 1, 1 초과시 원하는 결과가 나오지 않음
        //Color.fromRGBO(255, 0, 1, 0.3),
        title: Text(
          widget.title,
          style: const TextStyle(color: Color.fromARGB(255, 241, 240, 240)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// MARK: - Base Page
////////////////////////////////////////////////////////////////////////////////
class BasicPage extends StatefulWidget {
  const BasicPage({super.key, required this.title});

  final String title;

  @override
  State<BasicPage> createState() => _BasicPage();
}

class _BasicPage extends State<BasicPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //RGB값에 opacity 적용하기
        //opacity) 0 ~ 1, 1 초과시 원하는 결과가 나오지 않음
        //Color.fromRGBO(255, 0, 1, 0.3),
        title: Text(
          widget.title,
          style: const TextStyle(color: Color.fromARGB(255, 241, 240, 240)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class AllSelectBtnWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? action;
  const AllSelectBtnWidget({super.key, this.title = '', this.action});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        action?.call();
      },
      style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(
        color: Color(0xff000000),
        fontSize: 14, // TODO: ADD font style
      )),
      child: const Text('증권 한번에 선택'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
