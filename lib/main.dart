import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DashBoard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Login"),
      ),
      body: Center(child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              controller: emailText,
              decoration: InputDecoration(
                hintText: 'Enter Phone',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Color.fromARGB(82, 110, 27, 69),
                    width: 3,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Color.fromARGB(82, 18, 156, 254),
                    width: 3,
                  )
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 36, 1, 1),
                    width: 3,
                  )
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.orange),
                  onPressed: (){
                  },
                ),
                prefixIcon: Icon(Icons.phone, color: Colors.orange,),
              ),
            ),
            Container(
              height: 11,
            ),
            TextField(
              controller: passText,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Color.fromARGB(82, 110, 27, 69),
                  ),
                )
              ),
            ),
            ElevatedButton(onPressed: (){
              String uEmail = emailText.text.toString();
              String uPass = passText.text;
              print("Email: $uEmail, Pass: $uPass");
            },child: Text(
              'Login'
            ),)
          ],
        ))), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
