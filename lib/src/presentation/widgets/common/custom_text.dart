import '../../../../library/library.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final bool isJustify;
  const CustomText(
      {Key? key,
      required this.text,
      this.size = 12,
      this.color,
      this.isJustify = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: isJustify ? TextAlign.justify : TextAlign.left,
        style: TextStyle(color: color, fontSize: size),
      );
}
