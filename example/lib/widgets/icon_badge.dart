import 'package:material_ui/material_ui.dart';

class IconBadge extends StatelessWidget {
  final Icon icon;
  final int counter;
  final Color color;

  const IconBadge({
    super.key,
    required this.icon,
    this.counter = 0,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.0,
      height: 30.0,
      child: Stack(
        children: <Widget>[
          icon,
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(minWidth: 14, minHeight: 14),
              child: Text(
                counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
