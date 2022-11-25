class MaleFemaleVoice {
  String gender;

  bool isPlayingOrNot;
  String songName;
  String songDuration;
  MaleFemaleVoice({
    required this.isPlayingOrNot,
    required this.gender,
    required this.songDuration,
    required this.songName,
  });
}

List<MaleFemaleVoice> maleFemaleVoiceList = [
  MaleFemaleVoice(
    gender: "male",
    isPlayingOrNot: false,
    songDuration: "10 MIN",
    songName: "Focus Attention",
  ),
  MaleFemaleVoice(
    gender: "female",
    isPlayingOrNot: false,
    songDuration: "3 MIN",
    songName: "Body Scan",
  ),
  MaleFemaleVoice(
    gender: "female",
    isPlayingOrNot: false,
    songDuration: "5 MIN",
    songName: "Making Happiness",
  ),
  MaleFemaleVoice(
    gender: "male",
    isPlayingOrNot: false,
    songDuration: "2 MIN",
    songName: "Peace of Mind",
  ),
  MaleFemaleVoice(
    gender: "female",
    isPlayingOrNot: false,
    songDuration: "1 MIN",
    songName: "Days of Calm",
  ),
];
