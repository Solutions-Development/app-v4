import 'package:flutter/material.dart';

enum Filter { day, hour, place }

class EventsMenuWidget extends StatefulWidget {
  final dynamic onDay;
  final dynamic onHour;
  final dynamic onPlace;


  EventsMenuWidget({this.onDay, this.onHour, this.onPlace});

  @override
  _EventsMenuWidgetState createState() => _EventsMenuWidgetState();
}

class _EventsMenuWidgetState extends State<EventsMenuWidget> {
  bool _isDaySelected = false;
  bool _isHourSelected = false;
  bool _isPlaceSelected = false;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Filter>(
      icon: Icon(Icons.filter_list),
      onSelected: (Filter result) {
        switch (result) {
          case Filter.day:
            _isHourSelected = false;
            _isPlaceSelected = false;
            _isDaySelected = true;
            widget.onDay();
            break;
          case Filter.hour:
            _isDaySelected = false;
            _isPlaceSelected = false;
            _isHourSelected = true;
            widget.onHour();
            break;
          case Filter.place:
            _isDaySelected = false;
            _isHourSelected = false;
            _isPlaceSelected = true;
            widget.onPlace();
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Filter>>[
        PopupMenuItem<Filter>(
          child: ListTile(title: Text('Organizar por')),
        ),
        CheckedPopupMenuItem<Filter>(
          checked: _isDaySelected,
          value: Filter.day,
          child: Text('Día'),
        ),
        PopupMenuDivider(),
        CheckedPopupMenuItem<Filter>(
          checked: _isHourSelected,
          value: Filter.hour,
          child: Text('Hora'),
        ),
        PopupMenuDivider(),
        CheckedPopupMenuItem<Filter>(
          checked: _isPlaceSelected,
          value: Filter.place,
          child: Text('Salón'),
        ),
      ],
    );
  }
}
