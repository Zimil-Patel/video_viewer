# Video App Git Documentation

This repository contains a Flutter video app that allows users to play videos, including full-screen playback. The app leverages several packages for various functionalities, detailed below.

## Packages Used

- **provider: ^6.1.2**
- **chewie: ^1.8.1**
- **video_player: ^2.8.7**
- **google_fonts: ^6.2.1**
- **blurrycontainer: ^2.1.0**

## Features

### Core Features

- **Play Video**: Users can play video files within the app.
- **Full-Screen Playback**: Videos can be expanded to full-screen mode for an immersive viewing experience.

### Package Features

#### Chewie

Chewie is a Flutter package that provides a customizable video player widget. It simplifies the process of creating a video player with a consistent interface across all platforms.

- **Customizable Controls**: Chewie offers a set of customizable controls such as play/pause, seek, fullscreen toggle, and more.
- **Subtitle Support**: It supports the inclusion of subtitles in various formats.
- **Aspect Ratio**: Allows setting the aspect ratio for the video player.
- **Orientation Management**: Handles orientation changes and allows locking the screen orientation during video playback.

#### Video Player

The `video_player` package is a low-level video player for Flutter. It provides essential video playback functionality and works well with the `chewie` package to offer a full-featured video player experience.

- **Platform Support**: The package supports video playback on both Android and iOS.
- **Buffering Indicator**: Displays a buffering indicator while the video is loading.
- **Playback Speed**: Allows adjusting the playback speed of the video.
- **Video Quality**: Supports different video qualities and resolutions.

