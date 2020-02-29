# SoundCloud style audio player in Flutter

[![Build Status](https://app.bitrise.io/app/474b5771151802eb/status.svg?token=4s7obPnI_yciJHHVwQG_Bg&branch=develop)](https://app.bitrise.io/app/474b5771151802eb)

- [SoundCloud style audio player in Flutter](#soundcloud-style-audio-player-in-flutter)
  - [Features](#features)
  - [Requirements](#requirements)
  - [FAQ](#faq)
  - [Helpers](#helpers)
  - [License](#license)

## Features

## Requirements

- Flutter: the latest version on `flutter stable channel`
- Dart: 2.8.0+
- Xcode: 11.0+
- Androind Studio 3.3.1+
- Ruby: 2.4+
- CocoaPods: 1.8.0+
- Flutter & Dart plugins:
  - [Visual Studio Code](https://flutter.dev/docs/get-started/editor?tab=androidstudio)
  - [Android Studio / IntelliJ](https://flutter.dev/docs/get-started/editor?tab=vscode)

## FAQ

If you have any questions ping me on twitter: [@minikin](https://twitter.com/minikin)

## Helpers

Audio to json

```sh
audiowaveform -i minikin_raw.mp3 -o minikin_raw.json -z 2028

audiowaveform -i ambient_c_motion.mp3 -o ambient_c_motion.json -z 4056

audiowaveform -i ambient_c_motion.mp3 -o ambient_c_motion.json -z 8112

audiowaveform -i Setec_-_01_-_Ill_Be_Good.mp3 -o Setec_-_01_-_Ill_Be_Good.json -z 16224
```

```sh
flutter create --org me.minikin.flutter .
```

## License

This project is licensed under the MIT.

Audio assets are distribute under [Attribution-NonCommercial-NoDerivatives 4.0 International](https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode).

Images for artworks are from [Unsplash](https://unsplash.com).
