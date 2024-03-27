import '../../../core/app_export.dart';

/// This class is used in the [profileone_item_widget] screen.
class ProfileOneItemModel {
  ProfileOneItemModel({
    this.mUDrAmandeepGrewal,
    this.headOfCardiac,
    this.duration,
    this.loremIpsumDolor,
    this.image,
    this.personenGefLlt,
    this.commentsCounter,
    this.like,
    this.comment,
    this.id,
    this.fredRichard,
    this.four,
  }) {


  fredRichard = fredRichard ?? Rx("Fred Richard");
  duration = duration ?? Rx("2 days ago");
  four = four ?? Rx("4");


    mUDrAmandeepGrewal = mUDrAmandeepGrewal ?? Rx("MUDr. Amandeep Grewal");
    headOfCardiac = headOfCardiac ?? Rx("Head of  cardiac surgery");
    duration = duration ?? Rx("2 days ago");
    loremIpsumDolor = loremIpsumDolor ??
        Rx("Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.");
    image = image ?? Rx(ImageConstant.imgRectangle352);
    personenGefLlt = personenGefLlt ?? Rx("43 Personen gefällt das");
    commentsCounter = commentsCounter ?? Rx("3 Comments");
    like = like ?? Rx("Like");
    comment = comment ?? Rx("Comment");
    id = id ?? Rx("");
  }

  Rx<String>? mUDrAmandeepGrewal;

  Rx<String>? headOfCardiac;

  Rx<String>? duration;

  Rx<String>? loremIpsumDolor;

  Rx<String>? image;

  Rx<String>? personenGefLlt;

  Rx<String>? commentsCounter;

  Rx<String>? like;

  Rx<String>? comment;

  Rx<String>? id;

  Rx<String>? fredRichard;

  Rx<String>? four;

}
