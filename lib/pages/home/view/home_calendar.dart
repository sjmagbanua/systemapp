import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return   TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              rowHeight: 43,
              startingDayOfWeek: StartingDayOfWeek.monday,
              selectedDayPredicate: (day) {
                return isSameDay(state.selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                bloc.add(OnSelectedDay(selectedDay));
                //   setState(() {
                //     _selectedDay = selectedDay;
                //     _focusedDay = focusedDay;
                // print('selectedDay: $selectedDay');
                // print('focusedDay: $focusedDay');
                //   });
              },
              // selectedDayPredicate: (day) {
              //   return isSameDay(_selectedDay, day);
              // },
              onPageChanged: (focusedDay) {
                // _focusedDay = focusedDay;
                bloc.add(OnPageChanged(focusedDay));
              },
              // calendarFormat: _calendarFormat,
              // onFormatChanged: (format) {
              //   setState(() {
              //     _calendarFormat = format;
              //   });
              // },
            );
      },
    );
  }
}
