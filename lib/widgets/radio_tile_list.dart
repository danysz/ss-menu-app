import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

/// A list of radio options.
///
/// This widget wraps Material's [RadioListTile] into a ListView,
/// which it them populates based on [options] Map.
///
/// This is really a convenience widget built on top of [RadioListTile],
/// which may be a little confusing to use for newcomers.
class RadioTileList extends StatelessWidget {
  /// A [Map] of string options.
  /// The key is used as [RadioListTile]'s title as well as value.
  /// The value is used as [RadioListTile]'s subtitle.
  final Map<String, String> options;

  /// Represents the selected [RadioListTile].
  /// In other words, it is used as the groupValue for all [RadioListTile]s.
  final String selectedValue;

  /// A callback function that is assigned as changed event handler
  /// to all [RadioListTile]s.
  final Function onChanged;

  RadioTileList({
    @required this.options,
    this.selectedValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.options.length,
      itemBuilder: (context, itemIndex) {
        return RadioListTile<String>(
          title: Text(this.options.keys.elementAt(itemIndex)),
          subtitle: Text('₹ ${this.options.values.elementAt(itemIndex)}'),
          value: this.options.keys.elementAt(itemIndex),
          groupValue: this.selectedValue,
          activeColor: kThemeColorRed,
          onChanged: this.onChanged,
        );
      },
    );
  }
}