import 'library/library.dart';

void main() {
  var config = configSimpson;
  runCustomMain(config: config);
}

void runCustomMain({ConfigFlavor? config}) {
  // here I put the code for main, means initialisation for our app

  flavorVariantProvider = StateProvider((ref) => config);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
