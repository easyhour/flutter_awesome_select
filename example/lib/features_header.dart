import 'package:material_ui/material_ui.dart';

class FeaturesHeader extends StatelessWidget {
  final String title;

  const FeaturesHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      color: Theme.of(context).cardColor,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(title),
    );
  }
}
