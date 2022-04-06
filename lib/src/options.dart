abstract class StatusOptions {
  static const String COMPLETED = "COMPLETED";
  static const String RELEASING = "RELEASING";
  static const String PLANNED = "PLANNED";
  static const String CANCELLED = "CANCELLED";
}

abstract class ImageRequestFields {
  static const String COVER = "COVER";
  static const String BACKGROUND = "BACKGROUND";
  static const String GENERIC = "GENERIC";
  static const String LOGO = "LOGO";
  static const String SCREENSHOT = "SCREENSHOT";
}

abstract class ImageRequestOptions {
  static const String PUBLISHER = "comics_Publisher";
  static const String STAFF = "comics_Staff";
  static const String COMIC = "comics_Comic";
  static const String ISSUE = "comics_Issue";
  static const String VOICEACTOR = "cartoons_VoiceActor";
  static const String NETWORK = "cartoons_Network";
  static const String CHARACTER = "cartoons_Character";
  static const String CARTOON = "cartoons_Cartoon";
  static const String EPISODE = "cartoons_Episode";
  static const String TEAM = "cartoons_Team";
}

abstract class ReportOptions {
  static const String PUBLISHER = "comics_Publisher";
  static const String STAFF = "comics_Staff";
  static const String COMIC = "comics_Comic";
  static const String ISSUE = "comics_Issue";
  static const String VOICEACTOR = "cartoons_VoiceActor";
  static const String NETWORK = "cartoons_Network";
  static const String CHARACTER = "cartoons_Character";
  static const String CARTOON = "cartoons_Cartoon";
  static const String EPISODE = "cartoons_Episode";
  static const String TEAM = "cartoons_Team";
  static const String THOUGHT = "users_Thought";
  static const String COMMENT = "users_Comment";
  static const String USER = "auth_User";
}

abstract class CharacterStatusOptions {
  static const String UNKNOWN = "UNKNOWN";
  static const String ALIVE = "ALIVE";
  static const String DECEASED = "DECEASED";
}

abstract class CharacterAlignmentOptions {
  static const String ANTI_HERO = "ANTI-HERO";
  static const String GOOD = "GOOD";
  static const String EVIL = "EVIL";
}

abstract class FeedTypes {
  static const String COMIC = "COMIC";
  static const String ISSUE = "ISSUE";
  static const String CARTOON = "CARTOON";
  static const String EPISODE = "EPISODE";
  static const String THOUGHT = "THOUGHT";
}