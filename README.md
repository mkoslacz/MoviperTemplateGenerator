# [Moviper](https://github.com/mkoslacz/Moviper) Template Generator

### Templates generator for [Moviper](https://github.com/mkoslacz/Moviper) - [Mosby](https://github.com/mkoslacz/Moviper) based [VIPER](https://www.objc.io/issues/13-architecture/viper/) library for Android

## Where to get Moviper?

Read more [here](https://github.com/mkoslacz/Moviper).

## What does this generator do?

It generates appropriate file set to quickly create Moviper Viper managed Activity or Fragment.

## Installation

To use these templates you will need Android Studio.

Copy the folders from `resources/liveTemplates` into `<androidStudio-folder>/plugins/android/lib/templates/` and they will appear in the project explorer context menu.

Restart Android Studio, and you will find templates in: `New -> Other -> Moviper Viper managed Activity / Fragment`. Use the right click in location where you want your Activity/Fragment to be created.

## Why is it bundled as a InteliJ Plugin?

Because it's the easiest way for me to manage these templates and hopefully, in future, they will be distributed as a Android Studio plugin, what will allow a much easier installation and migrating between Android Studio versions.

## Known issues

- Generated Activity isn't added to `AndroidManifest.xml`.
- There is no possibility to generate other Moviper Fragments and Activities than Viper ones (Wipe and Perv are also available in the library).
- A copy-paste installation is kinda problematic.
- The copy-paste installation will not migrate with Android Studio updates.
- If you name your Activity or Fragment in non conventional way, weird stuff happens.

## Credits

I have adapted installation instructions from Gabriele Mariotti [Android Studio Templates](https://github.com/gabrielemariotti/AndroidStudioTemplate).

## License
```
Copyright 2016 Mateusz Koślacz

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```