import 'package:flutter_restfulapi/src/presentation/widgets/character/character_widget_detail.dart';
import 'package:flutter_restfulapi/src/presentation/widgets/common/custom_textfield_search_icon.dart';

import '../../../../constants/constant.dart';
import '../../../../library/library.dart';

class CharacterWidget extends StatefulWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  List<RelatedTopics> initialListCharacter = [];
  List<RelatedTopics> currentListCharacter = [];

  @override
  void initState() {
    super.initState();

    initialListCharacter = widget.character.relatedTopics ?? [];
    currentListCharacter = [...initialListCharacter];
  }

  void onHandleSearch(String str) {
    if (str.isNotEmpty) {
      List<RelatedTopics> filterItems = initialListCharacter.where((item) {
        return item.containString(str);
      }).toList();

      currentListCharacter = filterItems;
    } else {
      currentListCharacter = initialListCharacter;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //This check we choose to show detail in large screen (not phone screen) details
    bool islargeWidth =
        MediaQuery.of(context).size.width > limitWidthForPhone ? true : false;

    return Column(
      children: [
        CustomTextFieldWithSearchIcon(onChanged: (str) => onHandleSearch(str)),
        Expanded(
          child: ListView.builder(
              itemCount: currentListCharacter.length,
              itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CharacterWidgetDetail(
                              character: currentListCharacter[index],
                              isForHorizontalView: false)),
                    ),
                    child: islargeWidth
                        ? CharacterWidgetDetail(
                            character: currentListCharacter[index],
                            isForHorizontalView: true)
                        : ListTile(
                            title: CustomText(
                                text: currentListCharacter[index]
                                    .getNameCharacter())),
                  )),
        ),
      ],
    );
  }
}
