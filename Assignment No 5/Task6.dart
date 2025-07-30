void main() {
  /*Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
 */
  Map<String, dynamic> world = {
    'countries': {
      'Pakistan': {
        'capitalCity': 'Islamabad',
        'currency': 'PKR',
        'language': 'Urdu',
      },
      'India': {
        'capitalCity': 'New Delhi',
        'currency': 'INR',
        'language': 'Hindi',
      },
      'USA': {
        'capitalCity': 'Washington, D.C.',
        'currency': 'USD',
        'language': 'English',
      }
    }
  };

  // Print Pakistan's capital and currency
  var countries = world['countries'];
  print(
      countries); /*
  var selectedCountry = countries['Pakistan'];

  print("Capital of Pakistan: ${selectedCountry['capitalCity']}");
  print("Currency of Pakistan: ${selectedCountry['currency']}");*/
}
