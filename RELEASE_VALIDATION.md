# Release validation — brilliant_select 7.0.0

Validated on 2026-11-21 with Flutter 3.50.1 stable / Dart 3.14.0.

- Package `flutter analyze`: passed, no issues.
- Package `flutter test`: passed (15 tests).
- Example `flutter analyze`: passed, no issues.
- Example `flutter build web`: passed.
- Example widget test: passed (1 test).

Direct dependencies are current; remaining upstream/SDK transitive constraints are recorded in DEPENDENCIES.md. UI legacy imports were removed from library/test/example Dart sources. LICENSE files are preserved; publishing archives exclude generated artifacts and real Google API key patterns were not found in tracked configuration/source files.

Initial publish dry-run completed metadata/archive checks with uncommitted-tree warnings. Run the final `dart pub publish --dry-run` from the clean release commit before creating the annotated version tag. A nonzero result blocks tagging/publication.

Native Android/iOS builds and live Maps/Places/permission behavior have not been validated. They require platform setup and Google project credentials; see README.md. Hot reload was attempted via the workspace DTD but no application was running; automated tests and web compilation are the executed checks. No EasyHour app changes, remote pushes, new GitHub repositories or pub.dev uploads were performed.
