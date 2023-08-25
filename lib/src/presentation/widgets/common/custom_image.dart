import '../../../../library/library.dart';

class CustomImage extends StatelessWidget {
  final String url;

  const CustomImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return const CircularProgressIndicator();
        }
      },
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return const Icon(Icons.error);
      },
    );
  }
}
