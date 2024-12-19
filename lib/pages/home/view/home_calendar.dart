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
        return   Column(
          children: [
            // Text('email'),
            // Text(state.accounts ?? ''),
            // Text('Hi '),
            TableCalendar(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50), topRight: Radius.circular(50),
                      ),
                    // color: Colors.yellowAccent
                  ),
                  child: Visibility(
                    child: state.selectedDay != null ? 
                        const Stack(
                          children: [
                            Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:50.0,),
                                child: Text('Today',
                                style: TextStyle(fontSize: 30),
                                ),
                              ),
                            
                            ],
                          ),
                          ]
                        )
                     :  Padding(
                       padding: const EdgeInsets.fromLTRB(150,48,48,20),
                       child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: const Text('Sve'),
                       ),
                     ),
                     ),
                  // child: Stack(
                  //   children: [
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       const Padding(
                  //         padding: EdgeInsets.only(top:50.0,),
                  //         child: Text('Today',
                  //         style: TextStyle(fontSize: 30),
                  //         ),
                  //       ),
                  //       Container(
                  //         padding: const EdgeInsets.only(top: 20),
                  //         child: const Row(
                  //           children: [
                  //             Icon(CupertinoIcons.check_mark_circled)
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  //   ]
                  // ),
                ),
          ],
        );
      },
    );
  }
}
