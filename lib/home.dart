import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, res = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  // Addition Method:
  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Output: $res'),
            TextField(
              controller: t1,
              decoration: InputDecoration(
                hintText: 'Enter num 1:',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: t2,
              decoration: InputDecoration(
                hintText: 'Enter num 2:',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    return addition();
                  },
                  child: Text('+'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    return subtraction();
                  },
                  child: Text('-'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    return multiplication();
                  },
                  child: Text('*'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    return division();
                  },
                  child: Text('/'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
