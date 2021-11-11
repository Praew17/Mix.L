import '../backend/backend.dart';
import '../components/assss_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClasssWidget extends StatefulWidget {
  ClasssWidget({Key key}) : super(key: key);

  @override
  _ClasssWidgetState createState() => _ClasssWidgetState();
}

class _ClasssWidgetState extends State<ClasssWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFEA9577),
        automaticallyImplyLeading: true,
        title: StreamBuilder<List<AssingRecord>>(
          stream: queryAssingRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
              );
            }
            List<AssingRecord> textAssingRecordList = snapshot.data;
            // Return an empty Container when the document does not exist.
            if (snapshot.data.isEmpty) {
              return Container();
            }
            final textAssingRecord = textAssingRecordList.isNotEmpty
                ? textAssingRecordList.first
                : null;
            return Text(
              textAssingRecord.subject,
              style: FlutterFlowTheme.title3.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            );
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [AssssWidget()],
        ),
      ),
    );
  }
}
