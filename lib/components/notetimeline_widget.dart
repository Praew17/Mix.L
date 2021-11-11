import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotetimelineWidget extends StatefulWidget {
  NotetimelineWidget({Key key}) : super(key: key);

  @override
  _NotetimelineWidgetState createState() => _NotetimelineWidgetState();
}

class _NotetimelineWidgetState extends State<NotetimelineWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NoteRecord>>(
      stream: queryNoteRecord(
        queryBuilder: (noteRecord) => noteRecord.orderBy('timepig'),
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
        List<NoteRecord> listViewNoteRecordList = snapshot.data;
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: listViewNoteRecordList.length,
          itemBuilder: (context, listViewIndex) {
            final listViewNoteRecord = listViewNoteRecordList[listViewIndex];
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFC69D8A),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00853737),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 0, 0),
                                child: Text(
                                  listViewNoteRecord.name,
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.title1,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      13, 5, 0, 0),
                                  child: Text(
                                    listViewNoteRecord.detail,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.bodyText1,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(1, -0.05),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.6, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 25, 0, 0),
                                    child: Text(
                                      dateTimeFormat(
                                          'jm', listViewNoteRecord.timepig),
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.45, 0),
                                  child: Text(
                                    dateTimeFormat(
                                        'd/M/y', listViewNoteRecord.timepig),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.bodyText1,
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
              ),
            );
          },
        );
      },
    );
  }
}
