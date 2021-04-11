import 'package:music_ui/model/audio_model.dart';

String urlforweb = "https://www.bensound.com/";
String urlforaudio = urlforweb + "bensound-music/bensound-";
String urlforimg = urlforweb + "bensound-img/";

final audio1 = AudioModel(
  audioUrl: urlforaudio + "slowmotion.mp3",
  audioImgUrl: urlforimg + "slowmotion.jpg",
  name: "SLOW MOTION",
  composer: "Benjamin Tissot",
);
final audio2 = AudioModel(
  audioUrl: urlforaudio + "tomorrow.mp3",
  audioImgUrl: urlforimg + "tomorrow.jpg",
  name: "TOMORROW",
  composer: "Benjamin Tissot",
);
final audio3 = AudioModel(
  audioUrl: urlforaudio + "beyondtheline.mp3",
  audioImgUrl: urlforimg + "beyondtheline.jpg",
  name: "BEYOND THE LINE",
  composer: "Benjamin Tissot",
);
final audio4 = AudioModel(
  audioUrl: urlforaudio + "instinct.mp3",
  audioImgUrl: urlforimg + "instinct.jpg",
  name: "INSTINCT",
  composer: "Benjamin Tissot",
);
final audio5 = AudioModel(
  audioUrl: urlforaudio + "erf.mp3",
  audioImgUrl: urlforimg + "erf.jpg",
  name: "E.R.F.",
  composer: "Benjamin Tissot",
);

final List<AudioModel> audioList = [
  audio1,
  audio2,
  audio3,
  audio4,
  audio5,
  audio1,
  audio2,
  audio3,
  audio4,
  audio5,
  audio1,
  audio2,
  audio3,
  audio4,
  audio5,
];
