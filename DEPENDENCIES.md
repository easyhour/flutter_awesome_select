# Dependency update report

Updated 2026-11-21 using Flutter 3.50.1 / Dart 3.14.0. All direct runtime/dev dependencies in root and example manifests are at the latest stable versions available during preparation. `flutter pub upgrade --major-versions` made no further manifest changes. No runtime Git/path dependencies or overrides.

## Remaining transitive constraints

| Package | Resolved | Latest | Resolution |
| --- | --- | --- | --- |
| material_color_utilities | 0.13.0 | 0.13.1 | Latest resolvable is 0.13.0; retained upstream/SDK constraints, no override. |
| test_api | 0.7.14 | 0.7.15 | Latest resolvable is 0.7.14; retained upstream/SDK constraints, no override. |

The gallery-only `sticky_headers` remains at latest published 0.3.0+2. Its SDK upper bound is accepted by the Dart 3 null-safety compatibility rules; the example resolves and compiles on Flutter 3.50.1. It is not a runtime dependency of brilliant_select.
