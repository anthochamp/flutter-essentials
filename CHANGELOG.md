# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.5] - 2026-04-05

### Fixed

- `AppLifecycleStream.didChangeAppLifecycleState`: removed spurious `async` keyword.
- `cupertinoL10n` / `materialL10n`: replaced `!` force-unwrap with a checked lookup that throws
  a descriptive `FlutterError` when the corresponding `LocalizationsDelegate` is absent from
  the widget tree

## 0.1.4

- Upgrade ac_lints package to 0.4.0

## 0.1.3

- Upgrade ac_lints package to 0.3.0

## 0.1.2

- Fix published files

## 0.1.1

- Update LICENSE's copyright to include contributors and use SPDX file header
- Widen SDK environment requirement to include Dart 3 versions
- Upgrade ac_lints package to 0.2.1

## 0.1.0

- Initial release
