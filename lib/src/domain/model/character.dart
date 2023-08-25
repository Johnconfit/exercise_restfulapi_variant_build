class Character {
  String? abstraction;
  String? abstractSource;
  String? abstractText;
  String? abstractURL;
  String? answer;
  String? answerType;
  String? definition;
  String? definitionSource;
  String? definitionURL;
  String? entity;
  String? heading;
  String? image;
  int? imageHeight;
  int? imageIsLogo;
  int? imageWidth;
  String? infobox;
  String? redirect;
  List<RelatedTopics>? relatedTopics;
  List<RelatedResult>? results;
  String? type;
  Meta? meta;

  Character(
      {abstraction,
      abstractSource,
      abstractText,
      abstractURL,
      answer,
      answerType,
      definition,
      definitionSource,
      definitionURL,
      entity,
      heading,
      image,
      imageHeight,
      imageIsLogo,
      imageWidth,
      infobox,
      redirect,
      relatedTopics,
      results,
      type,
      meta});

  Character.fromJson(Map<String, dynamic> json) {
    abstraction = json['Abstract'];
    abstractSource = json['AbstractSource'];
    abstractText = json['AbstractText'];
    abstractURL = json['AbstractURL'];
    answer = json['Answer'];
    answerType = json['AnswerType'];
    definition = json['Definition'];
    definitionSource = json['DefinitionSource'];
    definitionURL = json['DefinitionURL'];
    entity = json['Entity'];
    heading = json['Heading'];
    image = json['Image'];
    imageHeight = json['ImageHeight'];
    imageIsLogo = json['ImageIsLogo'];
    imageWidth = json['ImageWidth'];
    infobox = json['Infobox'];
    redirect = json['Redirect'];
    if (json['RelatedTopics'] != null) {
      relatedTopics = <RelatedTopics>[];
      json['RelatedTopics'].forEach((v) {
        relatedTopics!.add(RelatedTopics.fromJson(v));
      });
    }
    if (json['Results'] != null) {
      results = <RelatedResult>[];
      json['Results'].forEach((v) {
        results!.add(RelatedResult.fromJson(v));
      });
    }
    type = json['Type'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Abstract'] = abstraction;
    data['AbstractSource'] = abstractSource;
    data['AbstractText'] = abstractText;
    data['AbstractURL'] = abstractURL;
    data['Answer'] = answer;
    data['AnswerType'] = answerType;
    data['Definition'] = definition;
    data['DefinitionSource'] = definitionSource;
    data['DefinitionURL'] = definitionURL;
    data['Entity'] = entity;
    data['Heading'] = heading;
    data['Image'] = image;
    data['ImageHeight'] = imageHeight;
    data['ImageIsLogo'] = imageIsLogo;
    data['ImageWidth'] = imageWidth;
    data['Infobox'] = infobox;
    data['Redirect'] = redirect;
    if (relatedTopics != null) {
      data['RelatedTopics'] = relatedTopics!.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      data['Results'] = results!.map((v) => v.toJson()).toList();
    }

    data['Type'] = type;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class RelatedTopics {
  String? firstURL;
  IconTopic? icon;
  String? result;
  String? text;

  RelatedTopics({firstURL, icon, result, text});

  RelatedTopics.fromJson(Map<String, dynamic> json) {
    firstURL = json['FirstURL'];
    icon = json['Icon'] != null ? IconTopic.fromJson(json['Icon']) : null;
    result = json['Result'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['FirstURL'] = firstURL;
    if (icon != null) {
      data['Icon'] = icon!.toJson();
    }
    data['Result'] = result;
    data['Text'] = text;
    return data;
  }

  String getNameCharacter() {
    final index = text?.indexOf("-", 0);

    return index == null
        ? ''
        : index == -1
            ? text ?? ''
            : text?.substring(0, index) ?? '';
  }

  String getDescriptionCharacter() {
    final index = text?.indexOf("-", 0);

    return index == null
        ? ''
        : index == -1
            ? text ?? ''
            : text?.substring(index + 2) ?? '';
  }

  bool containString(String str) =>
      text == null ? false : text!.toLowerCase().contains(str.toLowerCase());
}

class IconTopic {
  String? height;
  String? uRL;
  String? width;

  IconTopic({height, uRL, width});

  IconTopic.fromJson(Map<String, dynamic> json) {
    height = json['Height'];
    uRL = json['URL'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Height'] = height;
    data['URL'] = uRL;
    data['Width'] = width;
    return data;
  }
}

class Meta {
  String? attribution;
  String? blockgroup;
  String? createdDate;
  String? description;
  String? designer;
  String? devDate;
  String? devMilestone;
  List<Developer>? developer;
  String? exampleQuery;
  String? id;
  String? isStackexchange;
  String? jsCallbackName;
  String? liveDate;
  Maintainer? maintainer;
  String? name;
  String? perlModule;
  String? producer;
  String? productionState;
  String? repo;
  String? signalFrom;
  String? srcDomain;
  int? srcId;
  String? srcName;
  SrcOptions? srcOptions;
  String? srcUrl;
  String? status;
  String? tab;
  List<String>? topic;
  int? unsafe;

  Meta(
      {attribution,
      blockgroup,
      createdDate,
      description,
      designer,
      devDate,
      devMilestone,
      developer,
      exampleQuery,
      id,
      isStackexchange,
      jsCallbackName,
      liveDate,
      maintainer,
      name,
      perlModule,
      producer,
      productionState,
      repo,
      signalFrom,
      srcDomain,
      srcId,
      srcName,
      srcOptions,
      srcUrl,
      status,
      tab,
      topic,
      unsafe});

  Meta.fromJson(Map<String, dynamic> json) {
    attribution = json['attribution'];
    blockgroup = json['blockgroup'];
    createdDate = json['created_date'];
    description = json['description'];
    designer = json['designer'];
    devDate = json['dev_date'];
    devMilestone = json['dev_milestone'];
    if (json['developer'] != null) {
      developer = <Developer>[];
      json['developer'].forEach((v) {
        developer!.add(Developer.fromJson(v));
      });
    }
    exampleQuery = json['example_query'];
    id = json['id'];
    isStackexchange = json['is_stackexchange'];
    jsCallbackName = json['js_callback_name'];
    liveDate = json['live_date'];
    maintainer = json['maintainer'] != null
        ? Maintainer.fromJson(json['maintainer'])
        : null;
    name = json['name'];
    perlModule = json['perl_module'];
    producer = json['producer'];
    productionState = json['production_state'];
    repo = json['repo'];
    signalFrom = json['signal_from'];
    srcDomain = json['src_domain'];
    srcId = json['src_id'];
    srcName = json['src_name'];
    srcOptions = json['src_options'] != null
        ? SrcOptions.fromJson(json['src_options'])
        : null;
    srcUrl = json['src_url'];
    status = json['status'];
    tab = json['tab'];
    topic = json['topic'].cast<String>();
    unsafe = json['unsafe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attribution'] = attribution;
    data['blockgroup'] = blockgroup;
    data['created_date'] = createdDate;
    data['description'] = description;
    data['designer'] = designer;
    data['dev_date'] = devDate;
    data['dev_milestone'] = devMilestone;
    if (developer != null) {
      data['developer'] = developer!.map((v) => v.toJson()).toList();
    }
    data['example_query'] = exampleQuery;
    data['id'] = id;
    data['is_stackexchange'] = isStackexchange;
    data['js_callback_name'] = jsCallbackName;
    data['live_date'] = liveDate;
    if (maintainer != null) {
      data['maintainer'] = maintainer!.toJson();
    }
    data['name'] = name;
    data['perl_module'] = perlModule;
    data['producer'] = producer;
    data['production_state'] = productionState;
    data['repo'] = repo;
    data['signal_from'] = signalFrom;
    data['src_domain'] = srcDomain;
    data['src_id'] = srcId;
    data['src_name'] = srcName;
    if (srcOptions != null) {
      data['src_options'] = srcOptions!.toJson();
    }
    data['src_url'] = srcUrl;
    data['status'] = status;
    data['tab'] = tab;
    data['topic'] = topic;
    data['unsafe'] = unsafe;
    return data;
  }
}

class Developer {
  String? name;
  String? type;
  String? url;

  Developer({name, type, url});

  Developer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}

class Maintainer {
  String? github;

  Maintainer({github});

  Maintainer.fromJson(Map<String, dynamic> json) {
    github = json['github'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['github'] = github;
    return data;
  }
}

class SrcOptions {
  String? directory;
  int? isFanon;
  int? isMediawiki;
  int? isWikipedia;
  String? language;
  String? minAbstractLength;
  int? skipAbstract;
  int? skipAbstractParen;
  String? skipEnd;
  int? skipIcon;
  int? skipImageName;
  String? skipQr;
  String? sourceSkip;
  String? srcInfo;

  SrcOptions(
      {directory,
      isFanon,
      isMediawiki,
      isWikipedia,
      language,
      minAbstractLength,
      skipAbstract,
      skipAbstractParen,
      skipEnd,
      skipIcon,
      skipImageName,
      skipQr,
      sourceSkip,
      srcInfo});

  SrcOptions.fromJson(Map<String, dynamic> json) {
    directory = json['directory'];
    isFanon = json['is_fanon'];
    isMediawiki = json['is_mediawiki'];
    isWikipedia = json['is_wikipedia'];
    language = json['language'];
    minAbstractLength = json['min_abstract_length'];
    skipAbstract = json['skip_abstract'];
    skipAbstractParen = json['skip_abstract_paren'];
    skipEnd = json['skip_end'];
    skipIcon = json['skip_icon'];
    skipImageName = json['skip_image_name'];
    skipQr = json['skip_qr'];
    sourceSkip = json['source_skip'];
    srcInfo = json['src_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['directory'] = directory;
    data['is_fanon'] = isFanon;
    data['is_mediawiki'] = isMediawiki;
    data['is_wikipedia'] = isWikipedia;
    data['language'] = language;
    data['min_abstract_length'] = minAbstractLength;
    data['skip_abstract'] = skipAbstract;
    data['skip_abstract_paren'] = skipAbstractParen;
    data['skip_end'] = skipEnd;
    data['skip_icon'] = skipIcon;
    data['skip_image_name'] = skipImageName;
    data['skip_qr'] = skipQr;
    data['source_skip'] = sourceSkip;
    data['src_info'] = srcInfo;
    return data;
  }
}

class RelatedResult {
  String? result;

  RelatedResult({result});

  RelatedResult.fromJson(Map<String, dynamic> json) {
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['result'] = result;
    return data;
  }
}
