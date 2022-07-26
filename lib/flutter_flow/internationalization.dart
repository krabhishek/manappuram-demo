import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ml', 'ta', 'or'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? enText = '',
    String? mlText = '',
    String? taText = '',
    String? orText = '',
  }) =>
      [enText, mlText, taText, orText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // AuthPage
  {
    'a7sxytaa': {
      'en': 'Login',
      'ml': 'ലോഗിൻ',
      'or': 'ଭିତରକୁ ଯାଉ',
      'ta': 'உள்நுழைய',
    },
    'xe525qz3': {
      'en': 'Email Address',
      'ml': 'ഈ - മെയില് വിലാസം',
      'or': 'ଈମୈଲ ଠିକଣା',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    'w3yzkghq': {
      'en': 'Enter your email here...',
      'ml': 'നിങ്ങളുടെ ഇമെയിൽ ഇവിടെ നൽകുക...',
      'or': 'ଏଠାରେ ଆପଣଙ୍କର ଇମେଲ୍ ପ୍ରବେଶ କରନ୍ତୁ ...',
      'ta': 'உங்கள் மின்னஞ்சலை இங்கே உள்ளிடவும்...',
    },
    'ghzupazx': {
      'en': 'Password',
      'ml': 'Password',
      'or': 'ପାସୱାର୍ଡ',
      'ta': 'கடவுச்சொல்',
    },
    '339mnnn2': {
      'en': 'Enter your email here...',
      'ml': 'നിങ്ങളുടെ ഇമെയിൽ ഇവിടെ നൽകുക...',
      'or': 'ଏଠାରେ ଆପଣଙ୍କର ଇମେଲ୍ ପ୍ରବେଶ କରନ୍ତୁ ...',
      'ta': 'உங்கள் மின்னஞ்சலை இங்கே உள்ளிடவும்...',
    },
    'dd0rkp11': {
      'en': 'Login',
      'ml': 'ലോഗിൻ',
      'or': 'ଭିତରକୁ ଯାଉ',
      'ta': 'உள்நுழைய',
    },
    'x3s7y6ys': {
      'en': 'Sign Up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുക',
      'or': 'ସାଇନ୍ ଅପ୍ କରନ୍ତୁ',
      'ta': 'பதிவு செய்யவும்',
    },
    '5duhczen': {
      'en': 'Name',
      'ml': 'പേര്',
      'or': 'ନାମ',
      'ta': 'பெயர்',
    },
    'd9hq1trr': {
      'en': 'Please enter your full name',
      'ml': 'ദയവായി നിങ്ങളുടെ മുഴുവൻ പേര് നൽകുക',
      'or': 'ଦୟାକରି ଆପଣଙ୍କର ସମ୍ପୂର୍ଣ୍ଣ ନାମ ପ୍ରବେଶ କରନ୍ତୁ |',
      'ta': 'தயவுசெய்து உங்கள் முழு பெயரையும் பதிவுசெய்யவும்',
    },
    'i5rqjjit': {
      'en': 'Email Address',
      'ml': 'ഈ - മെയില് വിലാസം',
      'or': 'ଈମୈଲ ଠିକଣା',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    '6wtzesa4': {
      'en': 'Enter your email here...',
      'ml': 'നിങ്ങളുടെ ഇമെയിൽ ഇവിടെ നൽകുക...',
      'or': 'ଏଠାରେ ଆପଣଙ୍କର ଇମେଲ୍ ପ୍ରବେଶ କରନ୍ତୁ ...',
      'ta': 'உங்கள் மின்னஞ்சலை இங்கே உள்ளிடவும்...',
    },
    'btrafv9i': {
      'en': 'Password',
      'ml': 'Password',
      'or': 'ପାସୱାର୍ଡ',
      'ta': 'கடவுச்சொல்',
    },
    'wmf907nx': {
      'en': 'Enter your password',
      'ml': 'നിങ്ങളുടെ പാസ്‌വേഡ് നൽകുക',
      'or': 'ଆପଣଙ୍କର ପାସୱାର୍ଡ ପ୍ରବେଶ କରନ୍ତୁ |',
      'ta': 'உங்கள் கடவுச்சொல்லை உள்ளிடவும்',
    },
    '1xke27gy': {
      'en': 'Confirm Password',
      'ml': 'പാസ്വേഡ് സ്ഥിരീകരിക്കുക',
      'or': 'ପାସ୍ବାଡ଼ ନିସ୍ଚିତ କର',
      'ta': 'கடவுச்சொல்லை உறுதிப்படுத்தவும்',
    },
    'r0a7vdgb': {
      'en': 'Enter your password again',
      'ml': 'നിങ്ങളുടെ പാസ്‌വേഡ് വീണ്ടും നൽകുക',
      'or': 'ପୁନର୍ବାର ଆପଣଙ୍କର ପାସୱାର୍ଡ ପ୍ରବେଶ କରନ୍ତୁ |',
      'ta': 'உங்கள் கடவுச்சொல்லை மீண்டும் உள்ளிடவும்',
    },
    'uqu4dfun': {
      'en': 'Sign Up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുക',
      'or': 'ସାଇନ୍ ଅପ୍ କରନ୍ତୁ',
      'ta': 'பதிவு செய்யவும்',
    },
    'od3zxm2j': {
      'en': 'Welcome',
      'ml': 'സ്വാഗതം',
      'or': 'ସ୍ Welcome ାଗତ',
      'ta': 'வரவேற்பு',
    },
    '5tqw6som': {
      'en': 'Home',
      'ml': 'വീട്',
      'or': 'ଘର',
      'ta': 'வீடு',
    },
  },
  // WelcomePage
  {
    'hjiy2tkc': {
      'en': 'Welcome to Personal Loan',
      'ml': 'പേഴ്സണൽ ലോണിലേക്ക് സ്വാഗതം',
      'or': 'ବ୍ୟକ୍ତିଗତ an ଣକୁ ସ୍ୱାଗତ |',
      'ta': 'தனிநபர் கடனுக்கு வரவேற்கிறோம்',
    },
    'ol7phjay': {
      'en': 'This is third page',
      'ml': 'ഇത് മൂന്നാം പേജാണ്',
      'or': 'ଏହା ହେଉଛି ତୃତୀୟ ପୃଷ୍ଠା |',
      'ta': 'இது மூன்றாவது பக்கம்',
    },
    'qk2edw0i': {
      'en': 'Welcome Page',
      'ml': 'സ്വാഗതം പേജ്',
      'or': 'ସ୍ୱାଗତ ପୃଷ୍ଠା |',
      'ta': 'வரவேற்பு பக்கம்',
    },
    'fxziptrc': {
      'en': 'Home',
      'ml': 'വീട്',
      'or': 'ଘର',
      'ta': 'வீடு',
    },
  },
  // Miscellaneous
  {
    '8fem6u6n': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'odcd5hel': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'u5ikrjj9': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '420ilrek': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'zqtz2whj': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'i4fypsjw': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '2xbch9hg': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'gd1icbl0': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '6iruqvz8': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'tt3rnry4': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '5c5ubdlg': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '5t8v4w8i': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'kb2f86lb': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'c9jchrpj': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'x7wo5u88': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'evtf9jkg': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    '2olfo7qg': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'j7dv9jsk': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'e3j5mcgi': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
    'niotvci3': {
      'en': '',
      'ml': '',
      'or': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
