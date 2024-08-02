import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _admnemail = prefs.getString('ff_admnemail') ?? _admnemail;
    });
    _safeInit(() {
      _adpwd = prefs.getString('ff_adpwd') ?? _adpwd;
    });
    _safeInit(() {
      _approvedbyassistant = prefs
              .getStringList('ff_approvedbyassistant')
              ?.map((x) {
                try {
                  return ListofapprovedStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _approvedbyassistant;
    });
    _safeInit(() {
      _invoiceref = prefs.getString('ff_invoiceref')?.ref ?? _invoiceref;
    });
    _safeInit(() {
      _adref = prefs.getString('ff_adref')?.ref ?? _adref;
    });
    _safeInit(() {
      _approvedref = prefs.getString('ff_approvedref')?.ref ?? _approvedref;
    });
    _safeInit(() {
      _newspaperjoballocation = prefs
              .getStringList('ff_newspaperjoballocation')
              ?.map((path) => path.ref)
              .toList() ??
          _newspaperjoballocation;
    });
    _safeInit(() {
      _RoNUMBER = prefs.getInt('ff_RoNUMBER') ?? _RoNUMBER;
    });
    _safeInit(() {
      _loopmin = prefs.getInt('ff_loopmin') ?? _loopmin;
    });
    _safeInit(() {
      _Deputyref = prefs.getString('ff_Deputyref')?.ref ?? _Deputyref;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _searchkey = 'WCD';
  String get searchkey => _searchkey;
  set searchkey(String value) {
    _searchkey = value;
  }

  String _admnemail = '';
  String get admnemail => _admnemail;
  set admnemail(String value) {
    _admnemail = value;
    prefs.setString('ff_admnemail', value);
  }

  String _adpwd = '';
  String get adpwd => _adpwd;
  set adpwd(String value) {
    _adpwd = value;
    prefs.setString('ff_adpwd', value);
  }

  List<ListofapprovedStruct> _approvedbyassistant = [];
  List<ListofapprovedStruct> get approvedbyassistant => _approvedbyassistant;
  set approvedbyassistant(List<ListofapprovedStruct> value) {
    _approvedbyassistant = value;
    prefs.setStringList(
        'ff_approvedbyassistant', value.map((x) => x.serialize()).toList());
  }

  void addToApprovedbyassistant(ListofapprovedStruct value) {
    _approvedbyassistant.add(value);
    prefs.setStringList('ff_approvedbyassistant',
        _approvedbyassistant.map((x) => x.serialize()).toList());
  }

  void removeFromApprovedbyassistant(ListofapprovedStruct value) {
    _approvedbyassistant.remove(value);
    prefs.setStringList('ff_approvedbyassistant',
        _approvedbyassistant.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromApprovedbyassistant(int index) {
    _approvedbyassistant.removeAt(index);
    prefs.setStringList('ff_approvedbyassistant',
        _approvedbyassistant.map((x) => x.serialize()).toList());
  }

  void updateApprovedbyassistantAtIndex(
    int index,
    ListofapprovedStruct Function(ListofapprovedStruct) updateFn,
  ) {
    _approvedbyassistant[index] = updateFn(_approvedbyassistant[index]);
    prefs.setStringList('ff_approvedbyassistant',
        _approvedbyassistant.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInApprovedbyassistant(
      int index, ListofapprovedStruct value) {
    _approvedbyassistant.insert(index, value);
    prefs.setStringList('ff_approvedbyassistant',
        _approvedbyassistant.map((x) => x.serialize()).toList());
  }

  bool _showProfile = true;
  bool get showProfile => _showProfile;
  set showProfile(bool value) {
    _showProfile = value;
  }

  bool _showNotification = false;
  bool get showNotification => _showNotification;
  set showNotification(bool value) {
    _showNotification = value;
  }

  DocumentReference? _invoiceref =
      FirebaseFirestore.instance.doc('/Invoice_Request/j5jNyvHEseTP6T8JcxW1');
  DocumentReference? get invoiceref => _invoiceref;
  set invoiceref(DocumentReference? value) {
    _invoiceref = value;
    value != null
        ? prefs.setString('ff_invoiceref', value.path)
        : prefs.remove('ff_invoiceref');
  }

  DocumentReference? _adref =
      FirebaseFirestore.instance.doc('/Advertisement/bhbkrLKirg2nXlOFfI49');
  DocumentReference? get adref => _adref;
  set adref(DocumentReference? value) {
    _adref = value;
    value != null
        ? prefs.setString('ff_adref', value.path)
        : prefs.remove('ff_adref');
  }

  bool _issearch = false;
  bool get issearch => _issearch;
  set issearch(bool value) {
    _issearch = value;
  }

  DocumentReference? _approvedref =
      FirebaseFirestore.instance.doc('/approved_add/KEhkR7QdI6lDuPlTUFcA');
  DocumentReference? get approvedref => _approvedref;
  set approvedref(DocumentReference? value) {
    _approvedref = value;
    value != null
        ? prefs.setString('ff_approvedref', value.path)
        : prefs.remove('ff_approvedref');
  }

  List<String> _selectednewspaperlist = [];
  List<String> get selectednewspaperlist => _selectednewspaperlist;
  set selectednewspaperlist(List<String> value) {
    _selectednewspaperlist = value;
  }

  void addToSelectednewspaperlist(String value) {
    _selectednewspaperlist.add(value);
  }

  void removeFromSelectednewspaperlist(String value) {
    _selectednewspaperlist.remove(value);
  }

  void removeAtIndexFromSelectednewspaperlist(int index) {
    _selectednewspaperlist.removeAt(index);
  }

  void updateSelectednewspaperlistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectednewspaperlist[index] = updateFn(_selectednewspaperlist[index]);
  }

  void insertAtIndexInSelectednewspaperlist(int index, String value) {
    _selectednewspaperlist.insert(index, value);
  }

  String _newspapernameforcreateacccount = '';
  String get newspapernameforcreateacccount => _newspapernameforcreateacccount;
  set newspapernameforcreateacccount(String value) {
    _newspapernameforcreateacccount = value;
  }

  List<DocumentReference> _listofnationalnewspapers = [];
  List<DocumentReference> get listofnationalnewspapers =>
      _listofnationalnewspapers;
  set listofnationalnewspapers(List<DocumentReference> value) {
    _listofnationalnewspapers = value;
  }

  void addToListofnationalnewspapers(DocumentReference value) {
    _listofnationalnewspapers.add(value);
  }

  void removeFromListofnationalnewspapers(DocumentReference value) {
    _listofnationalnewspapers.remove(value);
  }

  void removeAtIndexFromListofnationalnewspapers(int index) {
    _listofnationalnewspapers.removeAt(index);
  }

  void updateListofnationalnewspapersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _listofnationalnewspapers[index] =
        updateFn(_listofnationalnewspapers[index]);
  }

  void insertAtIndexInListofnationalnewspapers(
      int index, DocumentReference value) {
    _listofnationalnewspapers.insert(index, value);
  }

  List<DocumentReference> _newspaperjoballocation = [];
  List<DocumentReference> get newspaperjoballocation => _newspaperjoballocation;
  set newspaperjoballocation(List<DocumentReference> value) {
    _newspaperjoballocation = value;
    prefs.setStringList(
        'ff_newspaperjoballocation', value.map((x) => x.path).toList());
  }

  void addToNewspaperjoballocation(DocumentReference value) {
    _newspaperjoballocation.add(value);
    prefs.setStringList('ff_newspaperjoballocation',
        _newspaperjoballocation.map((x) => x.path).toList());
  }

  void removeFromNewspaperjoballocation(DocumentReference value) {
    _newspaperjoballocation.remove(value);
    prefs.setStringList('ff_newspaperjoballocation',
        _newspaperjoballocation.map((x) => x.path).toList());
  }

  void removeAtIndexFromNewspaperjoballocation(int index) {
    _newspaperjoballocation.removeAt(index);
    prefs.setStringList('ff_newspaperjoballocation',
        _newspaperjoballocation.map((x) => x.path).toList());
  }

  void updateNewspaperjoballocationAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _newspaperjoballocation[index] = updateFn(_newspaperjoballocation[index]);
    prefs.setStringList('ff_newspaperjoballocation',
        _newspaperjoballocation.map((x) => x.path).toList());
  }

  void insertAtIndexInNewspaperjoballocation(
      int index, DocumentReference value) {
    _newspaperjoballocation.insert(index, value);
    prefs.setStringList('ff_newspaperjoballocation',
        _newspaperjoballocation.map((x) => x.path).toList());
  }

  int _RoNUMBER = 0;
  int get RoNUMBER => _RoNUMBER;
  set RoNUMBER(int value) {
    _RoNUMBER = value;
    prefs.setInt('ff_RoNUMBER', value);
  }

  List<DocumentReference> _allotednewspapers = [];
  List<DocumentReference> get allotednewspapers => _allotednewspapers;
  set allotednewspapers(List<DocumentReference> value) {
    _allotednewspapers = value;
  }

  void addToAllotednewspapers(DocumentReference value) {
    _allotednewspapers.add(value);
  }

  void removeFromAllotednewspapers(DocumentReference value) {
    _allotednewspapers.remove(value);
  }

  void removeAtIndexFromAllotednewspapers(int index) {
    _allotednewspapers.removeAt(index);
  }

  void updateAllotednewspapersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _allotednewspapers[index] = updateFn(_allotednewspapers[index]);
  }

  void insertAtIndexInAllotednewspapers(int index, DocumentReference value) {
    _allotednewspapers.insert(index, value);
  }

  DateTime? _selecteddates;
  DateTime? get selecteddates => _selecteddates;
  set selecteddates(DateTime? value) {
    _selecteddates = value;
  }

  int _loopmin = 0;
  int get loopmin => _loopmin;
  set loopmin(int value) {
    _loopmin = value;
    prefs.setInt('ff_loopmin', value);
  }

  bool _entermanually = false;
  bool get entermanually => _entermanually;
  set entermanually(bool value) {
    _entermanually = value;
  }

  List<String> _manualloistofedition = [];
  List<String> get manualloistofedition => _manualloistofedition;
  set manualloistofedition(List<String> value) {
    _manualloistofedition = value;
  }

  void addToManualloistofedition(String value) {
    _manualloistofedition.add(value);
  }

  void removeFromManualloistofedition(String value) {
    _manualloistofedition.remove(value);
  }

  void removeAtIndexFromManualloistofedition(int index) {
    _manualloistofedition.removeAt(index);
  }

  void updateManualloistofeditionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _manualloistofedition[index] = updateFn(_manualloistofedition[index]);
  }

  void insertAtIndexInManualloistofedition(int index, String value) {
    _manualloistofedition.insert(index, value);
  }

  DocumentReference? _Deputyref =
      FirebaseFirestore.instance.doc('/Users/GiUUWhbInSbg3rsIGijYUo6RGmr1\n');
  DocumentReference? get Deputyref => _Deputyref;
  set Deputyref(DocumentReference? value) {
    _Deputyref = value;
    value != null
        ? prefs.setString('ff_Deputyref', value.path)
        : prefs.remove('ff_Deputyref');
  }

  List<String> _editionmalual = [];
  List<String> get editionmalual => _editionmalual;
  set editionmalual(List<String> value) {
    _editionmalual = value;
  }

  void addToEditionmalual(String value) {
    _editionmalual.add(value);
  }

  void removeFromEditionmalual(String value) {
    _editionmalual.remove(value);
  }

  void removeAtIndexFromEditionmalual(int index) {
    _editionmalual.removeAt(index);
  }

  void updateEditionmalualAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _editionmalual[index] = updateFn(_editionmalual[index]);
  }

  void insertAtIndexInEditionmalual(int index, String value) {
    _editionmalual.insert(index, value);
  }

  bool _searchison = false;
  bool get searchison => _searchison;
  set searchison(bool value) {
    _searchison = value;
  }

  List<ListofapprovedStruct> _testlist = [];
  List<ListofapprovedStruct> get testlist => _testlist;
  set testlist(List<ListofapprovedStruct> value) {
    _testlist = value;
  }

  void addToTestlist(ListofapprovedStruct value) {
    _testlist.add(value);
  }

  void removeFromTestlist(ListofapprovedStruct value) {
    _testlist.remove(value);
  }

  void removeAtIndexFromTestlist(int index) {
    _testlist.removeAt(index);
  }

  void updateTestlistAtIndex(
    int index,
    ListofapprovedStruct Function(ListofapprovedStruct) updateFn,
  ) {
    _testlist[index] = updateFn(_testlist[index]);
  }

  void insertAtIndexInTestlist(int index, ListofapprovedStruct value) {
    _testlist.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
