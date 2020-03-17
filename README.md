<h1 align="center">
  <a href="https://github.com/minikin/flutter-audio">
  SoundCloud audio player in Flutter
  </a>
</h1>

<p align="center">
   SoundCloud style audio player in Flutter and Dart.
</p>

<p align="center">
<a href="https://github.com/minikin/flutter-audio"><img src="https://i.ibb.co/5chqVzQ/soundcloud-2.png" alt="soundcloud-2" border="0"></a>
</p>

<p align="center">
  <a href="https://github.com/minikin/flutter-audio/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/license-MIXED-blue.svg" alt="SoundCloud audio player is released under the MIT license." />
  </a>
  <a href="https://app.bitrise.io/app/474b5771151802eb">
    <img src="https://app.bitrise.io/app/474b5771151802eb/status.svg?token=4s7obPnI_yciJHHVwQG_Bg&branch=develop" alt="Current Build Status." />
  </a>
  <a href="https://github.com/minikin/flutter-audio/blob/master/CONTRIBUTING.md">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome!" />
  </a>
</p>

- [SoundCloud style audio player in Flutter](#soundcloud-style-audio-player-in-flutter)
  - [Features](#features)
  - [Requirements](#requirements)
  - [FAQ](#faq)
  - [Helpers](#helpers)
  - [License](#license)

## Features

## Requirements

- Flutter: the latest version on `flutter beta channel`
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

## License

This project is licensed under the mixed license.

Audio files and artworks are distribute under Attribution-Noncommercial-No Derivative Works.Foe more info check [LICENSE](https://github.com/minikin/flutter-audio/blob/feature/update_03_2020/LICENSE_MUSIC)

Source code distribute under [MIT](https://github.com/minikin/flutter-audio/blob/develop/License_Source_Code).
