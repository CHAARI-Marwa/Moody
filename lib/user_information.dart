import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dashboard.dart';

class UserInformationScreen extends StatefulWidget {
  @override
  _UserInformationScreenState createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  String? selectedGender;
  String? selectedGovernorate;
  bool hasChronicIllness = false;
  bool takingMedications = false;
  DateTime? selectedDate;

  final List<String> governorates = [
    'Ariana',
    'Béja',
    'Ben Arous',
    'Bizerte',
    'Gabès',
    'Gafsa',
    'Jendouba',
    'Kairouan',
    'Kasserine',
    'Kébili',
    'Le Kef',
    'Mahdia',
    'La Manouba',
    'Médenine',
    'Monastir',
    'Nabeul',
    'Sfax',
    'Sidi Bouzid',
    'Siliana',
    'Sousse',
    'Tataouine',
    'Tozeur',
    'Tunis',
    'Zaghouan',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now().subtract(Duration(days: 365 * 18)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Color(0xFF005F73),
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF005F73),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        final today = DateTime.now();
        int age = today.year - picked.year;
        if (today.month < picked.month || (today.month == picked.month && today.day < picked.day)) {
          age--;
        }
        _ageController.text = age.toString();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF7C8E0),
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200]!,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Color(0xFF005F73)),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'User Information',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF005F73),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'User\nInformation',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 32),
                            _buildTextField(
                              'First Name',
                              controller: _firstNameController,
                              textInputType: TextInputType.name,
                            ),
                            SizedBox(height: 16),
                            _buildTextField(
                              'Last Name',
                              controller: _lastNameController,
                              textInputType: TextInputType.name,
                            ),
                            SizedBox(height: 16),
                            _buildTextField(
                              'Age',
                              controller: _ageController,
                              textInputType: TextInputType.number,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today, color: Color(0xFF005F73)),
                                onPressed: () => _selectDate(context),
                              ),
                              readOnly: true,
                            ),
                            SizedBox(height: 16),
                            _buildDropdownField(
                              'Governorate',
                              governorates,
                              selectedGovernorate,
                              (String? newValue) {
                                setState(() {
                                  selectedGovernorate = newValue;
                                });
                              },
                              Icon(Icons.location_on, color: Color(0xFF005F73)),
                            ),
                            SizedBox(height: 16),
                            _buildDropdownField('Gender', ['Male', 'Female', 'Other'], selectedGender, (String? newValue) {
                              setState(() {
                                selectedGender = newValue;
                              });
                            }),
                            SizedBox(height: 24),
                            _buildCheckboxField(
                              'Do you have any chronic illnesses?',
                              hasChronicIllness,
                              (value) => setState(() => hasChronicIllness = value ?? false),
                            ),
                            SizedBox(height: 12),
                            _buildCheckboxField(
                              'Are you taking any medications?',
                              takingMedications,
                              (value) => setState(() => takingMedications = value ?? false),
                            ),
                            SizedBox(height: 32),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    final userInfo = {
                                      'firstName': _firstNameController.text,
                                      'lastName': _lastNameController.text,
                                      'age': _ageController.text,
                                      'governorate': selectedGovernorate,
                                      'gender': selectedGender,
                                      'hasChronicIllness': hasChronicIllness,
                                      'takingMedications': takingMedications,
                                    };
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardScreen(),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF005F73),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, {
    Widget? suffixIcon,
    TextEditingController? controller,
    TextInputType? textInputType,
    bool readOnly = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        readOnly: readOnly,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Poppins',
            fontSize: 14,
          ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          floatingLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          if (label == 'Age' && int.tryParse(value) == null) {
            return 'Please enter a valid age';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDropdownField(
    String label,
    List<String> items,
    String? selectedValue,
    void Function(String?) onChanged,
    [Widget? suffixIcon]
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Poppins',
            fontSize: 14,
          ),
          floatingLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        icon: Icon(Icons.arrow_drop_down, color: Color(0xFF005F73)),
        isExpanded: true,
        dropdownColor: Colors.white,
      ),
    );
  }

  Widget _buildCheckboxField(String label, bool value, Function(bool?) onChanged) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            fillColor: MaterialStateProperty.all(Colors.white),
            checkColor: Color(0xFF005F73),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
