import '../../../library/library.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String nameApp = '';
  String namePackage = '';

  @override
  void initState() {
    super.initState();
    ref.read(characterViewModelProvider.notifier).fetchData();

    PackageInfo.fromPlatform().then((packageInfo) => {
          setState(() {
            nameApp = packageInfo.appName;
            namePackage = packageInfo.packageName;
          }),
        });
  }

  @override
  Widget build(BuildContext context) {
    final dataViewModel = ref.watch(characterViewModelProvider);

    return Scaffold(
        appBar: AppBar(title: Text(nameApp)),
        body: Center(
          child: dataViewModel.when(
              loading: () => const CustomCircularIndicator(),
              error: (error, stackTrace) => const WidgetError(),
              data: (either) {
                return either.fold(
                  (failure) => const WidgetError(),
                  (character) {
                    return CharacterWidget(character: character);
                  },
                );
              }),
        ),
        bottomNavigationBar: BottomAppBar(
            child:
                SizedBox(height: 45, child: Center(child: Text(namePackage)))));
  }
}
