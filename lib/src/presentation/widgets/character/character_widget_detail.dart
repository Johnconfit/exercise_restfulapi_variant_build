import '../../../../library/library.dart';

String baseUrlIcon = 'https://duckduckgo.com/';

class CharacterWidgetDetail extends StatelessWidget {
  final RelatedTopics character;
  final bool isForHorizontalView;
  const CharacterWidgetDetail(
      {Key? key, required this.character, this.isForHorizontalView = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isForHorizontalView
        ? onHorizontalWidget()
        : Scaffold(
            appBar: AppBar(title: Text(character.getNameCharacter())),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  CustomImage(
                    url: baseUrlIcon + (character.icon?.uRL ?? ''),
                  ),
                  CustomText(text: character.getNameCharacter(), size: 15),
                  CustomText(
                      text: character.getDescriptionCharacter(),
                      size: 12,
                      isJustify: true),
                ],
              )),
            ));
  }

  Widget onHorizontalWidget() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: SizedBox(
            width: 100,
            child: CustomImage(
              url: baseUrlIcon + (character.icon?.uRL ?? ''),
            ),
          ),
          title: CustomText(text: character.getNameCharacter(), size: 13),
          subtitle: CustomText(
              text: character.getDescriptionCharacter(),
              size: 09,
              isJustify: true),
        ),
      );
}
