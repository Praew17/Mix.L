import '../backend/backend.dart';
import '../classss/classss_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5Widget extends StatefulWidget {
  Page5Widget({Key key}) : super(key: key);

  @override
  _Page5WidgetState createState() => _Page5WidgetState();
}

class _Page5WidgetState extends State<Page5Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFEA9577),
        automaticallyImplyLeading: true,
        leading: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFEA9577),
          ),
        ),
        title: Text(
          'Your class',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Poppins',
            color: Color(0xFFEEEEEE),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.76),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFB4B4B4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClassssWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: StreamBuilder<List<AssingRecord>>(
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
                            List<AssingRecord> textAssingRecordList =
                                snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final textAssingRecord =
                                textAssingRecordList.isNotEmpty
                                    ? textAssingRecordList.first
                                    : null;
                            return Text(
                              textAssingRecord.subject,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
