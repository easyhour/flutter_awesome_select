# brilliant_select

Customizable single and multiple selection widgets with search, grouping, dialogs and bottom sheets for Flutter.

An independently maintained, public fork of `awesome_select`. It is a general-purpose Flutter library and does not depend on EasyHour services or a private account.

## Requirements

- Flutter 3.50 or later and Dart 3.14 or later.
- Standalone `material_ui` libraries. This release is incompatible with the legacy in-SDK design-system types.

## Installation

```yaml
dependencies:
  brilliant_select: ^7.0.0
```

```dart
import 'package:brilliant_select/brilliant_select.dart';
import 'package:material_ui/material_ui.dart';
```

See [the example](example/lib/main.dart), [migration guide](MIGRATION.md) and [release checklist](RELEASING.md). The previous `awesome_select.dart` barrel remains available inside the new package as a compatibility export; the old package name is not an alias.

## Usage

```dart
SmartSelect<String>.single(
  title: 'Language',
  selectedValue: 'en',
  choiceItems: [
    S2Choice(value: 'en', title: 'English'),
    S2Choice(value: 'it', title: 'Italian'),
  ],
  onChange: (selection) {
    // Store selection.value in your application state.
  },
);
```

Use `SmartSelect.multiple` for multiple choices. Search, grouping, validation and custom builders remain available through the existing S2 API. See the example gallery for complete flows.

Pure Flutter widgets can be used across Flutter platforms; platform-specific builds should be validated by the consuming application. The example gallery retains `sticky_headers` at its latest published version, 0.3.0+2; it is an example-only dependency and is not required by the library.

## Origin and license

Derived from [awesome_select](https://github.com/easyhour/flutter_awesome_select) at `f24f22172858b58654c5c1b333131372c9155300`. Original authors, copyright notices and licenses are preserved in [LICENSE](LICENSE). Historical API documentation is archived in [UPSTREAM_README.md](UPSTREAM_README.md); its version and support claims do not apply to this fork.

This fork updates dependencies, design-system imports, examples and development tooling. See [CHANGELOG.md](CHANGELOG.md) for changes.
