import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:add_ad/constant.dart';

class ActiveAndEndDateAds extends StatefulWidget {
  @override
  State<ActiveAndEndDateAds> createState() => _ActiveAndEndDateAdsState();
}

class _ActiveAndEndDateAdsState extends State<ActiveAndEndDateAds> {
  DateTime? _SelectedDateActive;

  DateTime? _SelectedDateEnd;

  Future<void> _openDatePickerActive() async {
    final DateTime? ActiveDate = await showDatePicker(
      context: this.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (ActiveDate != null && ActiveDate != _SelectedDateActive) {
      setState(() {
        _SelectedDateActive = ActiveDate;
      });
    }
  }

  Future<void> _openDatePickerEnd() async {
    final DateTime? EndDate = await showDatePicker(
      context: this.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (EndDate != null && EndDate != _SelectedDateEnd) {
      setState(() {
        _SelectedDateEnd = EndDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormatter = DateFormat('MM/dd/yy');
    DateTime current_date = DateTime.now();

    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 25,
          width: 90,
          decoration: DatePickerContainer,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: TextButton(
                onPressed: _openDatePickerActive,
                child: _SelectedDateActive == null
                    ? Text(
                        dateFormatter.format(current_date),
                        style: LeftSideContainerTextStyle,
                      )
                    : Text(
                        dateFormatter.format(_SelectedDateActive!),
                        style: LeftSideContainerTextStyle,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
