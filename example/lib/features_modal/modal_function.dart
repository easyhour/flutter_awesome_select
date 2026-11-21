import 'package:material_ui/material_ui.dart';
import 'package:brilliant_select/brilliant_select.dart';

class ProgrammaticModal extends StatefulWidget {
  const ProgrammaticModal({super.key});

  @override
  State<ProgrammaticModal> createState() => _ProgrammaticModalState();
}

class _ProgrammaticModalState extends State<ProgrammaticModal> {
  final List<S2Choice<String>> _choices = [
    S2Choice<String>(value: 'app', title: 'Apple'),
    S2Choice<String>(value: 'ore', title: 'Orange'),
    S2Choice<String>(value: 'mel', title: 'Melon'),
  ];

  List<String> _value = [];

  final GlobalKey<S2MultiState<String>> _smartSelectKey =
      GlobalKey<S2MultiState<String>>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _smartSelectKey.currentState?.showModal();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SmartSelect<String>.multiple(
      key: _smartSelectKey,
      title: 'Fruit',
      selectedValue: _value,
      onChange: (selected) => setState(() => _value = selected.value),
      choiceItems: _choices,
      tileBuilder: (context, state) {
        return Container();
      },
    );
  }
}
