import 'package:flutter/widgets.dart';

class _VoidWidgetElement extends Element {
  _VoidWidgetElement(Widget widget) : super(widget);

  @override
  bool get debugDoingBuild => false;
}

class VoidWidget extends Widget {
  const VoidWidget({super.key});

  @override
  Element createElement() => _VoidWidgetElement(this);
}
