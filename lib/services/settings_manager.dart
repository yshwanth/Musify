import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musify/enums/quality_enum.dart';

// Preferences

final preferredFileExtension = ValueNotifier<String>(
  Hive.box('settings').get('audioFileType', defaultValue: 'mp3') as String,
);

final preferredDownloadMode = ValueNotifier<String>(
  Hive.box('settings').get('downloadMode', defaultValue: 'normal') as String,
);

final playNextSongAutomatically = ValueNotifier<bool>(
  Hive.box('settings').get('playNextSongAutomatically', defaultValue: false),
);

final useSystemColor = ValueNotifier<bool>(
  Hive.box('settings').get('useSystemColor', defaultValue: true),
);

final sponsorBlockSupport = ValueNotifier<bool>(
  Hive.box('settings').get('sponsorBlockSupport', defaultValue: false),
);

final audioQualitySetting = ValueNotifier<AudioQuality?>(
  Hive.box('settings').get('audioQuality', defaultValue: null),
);

// Non-Storage Notifiers

final shuffleNotifier = ValueNotifier<bool>(false);
final repeatNotifier = ValueNotifier<bool>(false);
final muteNotifier = ValueNotifier<bool>(false);
