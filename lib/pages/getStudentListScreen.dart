import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStudentGradesList extends StatefulWidget {
  const GetStudentGradesList({super.key});

  @override
  State<GetStudentGradesList> createState() => _GetStudentGradesListState();
}

class _GetStudentGradesListState extends State<GetStudentGradesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Text("لیست دانش آموزان"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Container(
            color: Colors.teal.withOpacity(0.3),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 32,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        icon: Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              color: Colors.white,
                              child: Icon(
                                Icons.search,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


// Stack(
//         children: [
//           // Background content (optional)
//           Positioned.fill(
//             child: TextField(
//               decoration: InputDecoration(fillColor: Colors.white
//                   // Other decorations...
//                   ),
//             ),
//           ), // Optional background
//           Positioned.fill(
//             child: Container(
//               color: Colors.teal.withOpacity(0.3),
//               child: Column(
//                 children: [],
//               ),
//             ),
//           )
//         ],
//       ),