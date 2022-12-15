import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/my_colors.dart';
import '../../../data/values/styles.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  _PersonalDetailState createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? selectedCountry = "";
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2023));
    if (picked != null) {
      setState(() {
        _dateOfBirthController.text = picked.toString().substring(0, 10);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: MyColors.bodyColor,
        title: Text(
          "Personal Detail",
          style: Styles.appTheme.textTheme.headline4,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          color: MyColors.bodyColor,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _firstNameInputField(context),
                const SizedBox(
                  height: 5,
                ),
                _lastNameInputField(context),
                const SizedBox(
                  height: 5,
                ),
                _emailInputField(context),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(child: _pickCountryCode(context))),
                    Expanded(
                      flex: 6,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: _phoneInputField(context)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                _nationalityInputField(context),
                const SizedBox(
                  height: 5,
                ),
                _countryInputField(context),
                const SizedBox(
                  height: 5,
                ),
                _dateOfBirthInputField(context),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Save",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _firstNameInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _firstNameController,
        keyboardType: TextInputType.text,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "First Name",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter First Name";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _lastNameInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _lastNameController,
        keyboardType: TextInputType.text,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Second Name",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Second Name";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _emailInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Email",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Email Address";
          } else if (!lastName.contains('@')) {
            return "Enter valid email";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _phoneInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _phoneController,
        keyboardType: TextInputType.number,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Phone Number",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Phone Number";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _dateOfBirthInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _dateOfBirthController,
        keyboardType: TextInputType.text,
        autocorrect: false,
        onTap: () {
          _selectDate();
          FocusScope.of(context).requestFocus(FocusNode());
        },
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 30,
            ),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Date of Birth",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Date of Birth";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _nationalityInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _nationalityController,
        keyboardType: TextInputType.text,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 30,
            ),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Nationality",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Nationality";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _countryInputField(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: _countryController,
        keyboardType: TextInputType.text,
        autocorrect: false,
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 30,
            ),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "Country",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Enter Country";
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget _pickCountryCode(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        //  controller: _dateOfBirthController,
        // keyboardType: TextInputType.text,
        //  autocorrect: false,
        onTap: () {
          showCountryPicker(
            context: context,
            //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
            exclude: <String>['KN', 'MF'],
            favorite: <String>['SE'],
            //Optional. Shows phone code before the country name.
            showPhoneCode: true,
            onSelect: (Country country) {
              setState(() {
                selectedCountry = country.displayName;
              });

              print('Select country: ${country.displayName}');
            },
            // Optional. Sets the theme for the country list picker.
            countryListTheme: CountryListThemeData(
              // Optional. Sets the border radius for the bottomsheet.
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              // Optional. Styles the search field.
              inputDecoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Start typing to search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xFF8C98A8).withOpacity(0.2),
                  ),
                ),
              ),
              // Optional. Styles the text in the search field
              searchTextStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
          );
        },
        maxLength: 128,
        style: const TextStyle(
          color: Colors.black54,
        ),
        decoration: InputDecoration(
            counterText: "",
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 30,
            ),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.white,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 232, 232, 232),
                    color: Colors.red,
                    width: 0.0),
                borderRadius: BorderRadius.circular(20)),
            errorStyle: const TextStyle(fontSize: 12),
            labelText: "+91",
            labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                letterSpacing: 1.0)

            // errorStyle: AppTypoGraphy.errorHintStyle
            ),
        validator: (String? lastName) {
          if (lastName!.isEmpty) {
            return "Select Country";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
