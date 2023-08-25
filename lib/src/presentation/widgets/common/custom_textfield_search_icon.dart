import '../../../../library/library.dart';

class CustomTextFieldWithSearchIcon extends StatefulWidget {
  final Function(String str) onChanged;
  const CustomTextFieldWithSearchIcon({Key? key, required this.onChanged})
      : super(key: key);

  @override
  State<CustomTextFieldWithSearchIcon> createState() =>
      _CustomTextFieldWithSearchIconState();
}

class _CustomTextFieldWithSearchIconState
    extends State<CustomTextFieldWithSearchIcon> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        onChanged: (String str) {
          if (str.isNotEmpty) {
            widget.onChanged(str);
          }
          setState(() {});
        });
  }
}
