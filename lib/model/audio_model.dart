class AudioModel {
  final String audioUrl;
  final String audioImgUrl;
  final String name;
  final String composer;

  const AudioModel({
    required this.audioUrl,
    required this.audioImgUrl,
    required this.name,
    required this.composer,
  });
  // factory AudioModel.fromJson(Map<String, dynamic> json) => AudioModel(
  //       audioUrl: json['audioUrl'],
  //       audioImgUrl: json['audioImgUrl'],
  //       name: json['name'],
  //       composer: json['composer'],
  //     );
  // Map<String, dynamic> toJson() => {
  //       'audioUrl': audioUrl,
  //       'audioImgUrl': audioImgUrl,
  //       'name': name,
  //       'composer': composer,
  //     };
}
