import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_ui/model/audio_model.dart';

class AudioController extends GetxController {
  Duration? totalDuration;
  Duration? position;
  String? audioState;
  AudioModel? audioModel;
  AudioController() {
    initAudio();
  }

  AudioPlayer audioPlayer = AudioPlayer();
  initAudio() {
    audioPlayer.onDurationChanged.listen((updatedDuration) {
      totalDuration = updatedDuration;
      update();
    });
    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      position = updatedPosition;
      update();
    });
    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == AudioPlayerState.STOPPED) audioState = "Stopped";
      if (playerState == AudioPlayerState.PLAYING) audioState = "Playing";
      if (playerState == AudioPlayerState.PAUSED) audioState = "Paused";
      update();
    });
  }

  playAudio(String url) async {
    await audioPlayer.play(url);
  }

  pauseAudio() {
    audioPlayer.pause();
  }

  stopAudio() {
    audioPlayer.stop();
  }

  seekAudio(Duration durationToSeek) {
    audioPlayer.seek(durationToSeek);
  }
}
