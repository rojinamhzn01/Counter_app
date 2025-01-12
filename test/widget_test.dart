import 'package:flutter/material.dart';

// // Internally
// class Widget {}
// // stateless
// abstract class Stateless extends Widget {
//   Widget build();
// }
// class Text extends Widget {
// //   screen ma text dekhaunae
//   String text;

//   Text(this.text);
// }
// // My side

// class HomeWidget extends Stateless {
//   Widget build(){
//     return  Text("Hello");
//   }
// }

// void runApp(Widget app){
// //   app run

// }
// // stateful
// void main() {
//   runApp(HomeWidget());

// }

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   width: 120,
              //   height: 120,
              //   // color: Colors.lightBlueAccent,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(60),
              //     color: Colors.black12,
              //     image: DecorationImage(
              //       fit: BoxFit.cover,
              //       image: NetworkImage(
              //         "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              //       ),
              //     ),
              //   ),
              // ),

              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
                ),
              ),
              Text(
                "Counter App",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Navigation
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) {
                      return CounterScreen();
                    },
                  ));
                },
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var storeValue = 4;
  @override
  Widget build(BuildContext context) {
    print("Malai feri bolayo");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.amber,
            // height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button
                ElevatedButton(
                  onPressed: () {
                    // storeValue storeValue +1
                    setState(() {
                      storeValue++;
                    });
                    print(storeValue);
                  },
                  child: const Text("+"),
                ),
                // Text
                Text(storeValue.toString()),
                // Button
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        storeValue--;
                      },
                    );
                  },
                  child: const Text("-"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}