# Migrating from awesome_select

1. Replace the old hosted/Git dependency with `brilliant_select: ^7.0.0`.
2. Replace `package:awesome_select/awesome_select.dart` with `package:brilliant_select/brilliant_select.dart` and any other imports with the new package prefix. Prefer public exports over `src/` imports.
3. Use Flutter >=3.50.0 / Dart >=3.14.0 and update Material imports to `package:material_ui/material_ui.dart`, Cupertino imports to `package:cupertino_ui/cupertino_ui.dart` where used. Declare these dependencies in the consuming app where imported.
4. Obtain localization delegates from the standalone libraries. Use `GlobalMaterialLocalizations.delegates` for the standard Material/Cupertino/Widgets delegates where needed.
5. Existing public widget/model names and callback shapes are retained. Types such as ThemeData, TabController and design widgets now originate from standalone libraries, so this is a breaking release relative to upstream. Legacy third-party subtrees may need the official compatibility bridges; do not mix legacy and standalone types in callback signatures.
6. Run analysis and widget tests, then exercise selection/navigation/location flows in your app.

The compatibility barrel `awesome_select.dart` exports the same API under the new package prefix. No private EasyHour functionality is required.
