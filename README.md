Bible Build
===

## Install Gradle

### Use SDKMAN!

```sh
sdk install gradle 7.6
```

## Install Cordova

```sh
npm install -g cordova@12.0.0
```

### Usage (Sample Commands)

```sh
cordova create kjv-bible io.pitsolu.bible kjv-android
cd kjv-android
# cordova plugin add cordova-plugin-camera --save
cordova platform add android --save
cordova requirements android
cordova build android --verbose
cordova run android
```

## Cordova Res

### Resource Generator

This tool will crop and resize JPEG and PNG source images to generate icons and splash screens for modern iOS, Android, and Windows. cordova-res was developed for use with Cordova, but Capacitor and other native runtimes are supported.

### Install

```sh
npm install -g cordova-res
```
### Usage
`cordova-res` expects a Cordova project structure such as:

```sh
resources/
├── android
|   ├── icon-background.png
|   └── icon-foreground.png
├── icon.png
└── splash.png
config.xml
```

- `resources/icon.(png|jpg)` must be at least `1024×1024px`
- `resources/splash.(png|jpg)` must be at least `2732×2732px`
- `config.xml` is optional. If present, the generated images are registered accordingly

To generate resources with all the default options, just run:

```sh
cordova-res
```

`cordova-res` accepts a platform for the first argument. If specified, resources are generated only for that platform:

## Fastlane (Ruby)

Fastlane [Setup Android](https://docs.fastlane.tools/getting-started/android/setup/)

### Introduction

fastlane is the easiest way to automate beta deployments and releases for your iOS and Android apps. 🚀 It handles all tedious tasks, like generating screenshots, dealing with code signing, and releasing your application.

You can start by creating a Fastfile file in your repository, here’s one that defines your beta or App Store release process:

```rb
lane :beta do
  increment_build_number
  build_app
  upload_to_testflight
end

lane :release do
  capture_screenshots
  build_app
  upload_to_app_store       # Upload the screenshots and the binary to iTunes
  slack                     # Let your team-mates know the new version is live
end
```

You just defined 2 different lanes, one for beta deployment, one for App Store. To release your app in the App Store, all you have to do is

```sh
fastlane release
```

### Install

This is not recommended for your local environment, but you can still install fastlane to system Ruby's environment. Using sudo often occurs unwanted results later due to file permission and makes managing your environment harder.

```sh
sudo gem install fastlane
```

#### Setting up fastlane

Navigate to your iOS or Android app and run

```sh
fastlane init
```

That's it! fastlane will automatically generate a configuration for you based on the information provided.

You can see the newly created `./fastlane directory`, with the following files:

- `Appfile` which defines configuration information that is global to your app
- `Fastfile` which defines the "lanes" that drive the behavior of fastlane