# Releasing brilliant_select

Release version: `7.0.0`. Tag: `v7.0.0`. Do not publish unless all validation commands pass.

```sh
flutter pub get
flutter analyze
flutter test
dart format --output=none --set-exit-if-changed lib test example/lib example/test
dart pub publish --dry-run
```

From `example/`, run `flutter pub get` and `flutter analyze`; build/run on the platforms used by your application. Check the dry-run file list for credentials and generated artifacts. The example intentionally uses a local path to the parent package; the published library runtime dependencies must all be hosted or SDK dependencies.

Confirm the Google account used by pub is your personal account and that the package name is still available. Publishing is permanent. After reviewing the tagged commit and dry-run output, publish manually from this repository:

```sh
dart pub publish
```

No publisher field is required for an independent Google account. No upload command is run by the preparation workflow. Install the released version in a clean consumer before announcing it. Any change after tagging requires a new reviewed commit/tag and another validation run.
