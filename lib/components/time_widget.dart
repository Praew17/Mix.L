import '../components/post_widget.dart';
import '../components/timline_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeWidget extends StatefulWidget {
  TimeWidget({Key key}) : super(key: key);

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: TimlineWidget(),
        ),
        Container(
          width: 1000,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 200, 0),
                child: Text(
                  'เขียนโพสต์เล่นได้นะ',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xAB303030),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.95, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 5),
                  child: InkWell(
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return PostWidget();
                        },
                      );
                    },
                    child: Icon(
                      Icons.add_circle_outlined,
                      color: Color(0xFF828282),
                      size: 50,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
