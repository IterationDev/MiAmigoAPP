import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? frText = '',
  }) =>
      [esText, enText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'kz4zu1hh': {
      'es': 'INGRESA \nCON UN TOQUE',
      'en': '',
      'fr': '',
    },
    'l87em861': {
      'es': 'VERSION 1.0',
      'en': '',
      'fr': '',
    },
    '94swjsyg': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // UserPage
  {
    '4b0bfl84': {
      'es': 'COMO ME SIENTO',
      'en': '',
      'fr': '',
    },
    'dl5x1mwg': {
      'es': 'Contacta',
      'en': '',
      'fr': '',
    },
    'anzs8zt1': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'two9l6zn': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'wvf2oiup': {
      'es': 'Añadir otro...',
      'en': '',
      'fr': '',
    },
    'uksl23gb': {
      'es': 'Juega',
      'en': '',
      'fr': '',
    },
    'cwajhnp3': {
      'es': 'BUSCA TU JUEGO FAVORITO...',
      'en': '',
      'fr': '',
    },
    '20zgjmjn': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'xaahiy9w': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'qb5up978': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'msuiq8hu': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '2qwuvpza': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'vhrrzybg': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'uttuf2kl': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'dbxgksh6': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '81nnolue': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'z66eaavo': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'gawyi2ya': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'l5cdl3gk': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '6unw8158': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'py3hp22s': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    '8kk6mued': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'v8ta5uxu': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    't5rwzpzg': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'pm5jcbdl': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'g3fhkbm9': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'jf6grzrz': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'eh23gczt': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'yztw6bo2': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    '2ncded7q': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    '0lz47p9r': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'enbwwrx2': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'ezu9v4kr': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'tdvt763p': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'n6himrgf': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'erzfxl1q': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'l56rfzcg': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'z7v4xymp': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'w29a8d79': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'q7i9cg2n': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'vd8xpdt2': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'n15otxro': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'jdeiq81o': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'x1wc2ckk': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'xks8sqzm': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'z168mf9n': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    '1e6cn5pm': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'e4rf1d7k': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    's83mq0d3': {
      'es': 'Descubre',
      'en': '',
      'fr': '',
    },
    '1c4ssnyx': {
      'es': 'QUE QUIERES LEER HOY...',
      'en': '',
      'fr': '',
    },
    'z1d7pcy9': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'nfhij7z4': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    't33gktjd': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'on0ohvi5': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    '0dpw0w9z': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'bvn9wc43': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'im85b2km': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'izdc331g': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'z6g659x7': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'mlsrg50u': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'xknwe5ce': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'ef2rzswy': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'm6hvy8ec': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'othtifpc': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'mhyv0naa': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'xldfa4et': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'vhxnnp90': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'd137teux': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    '9ns37sa0': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    '9b9ytopb': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'e452737q': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'umlxmonx': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // TutorialPage
  {
    '6kyjckyy': {
      'es': 'Hey Jenny',
      'en': '',
      'fr': '',
    },
    '52hgf0x0': {
      'es': 'Stay up to date with the latest news below.',
      'en': '',
      'fr': '',
    },
    'krl17icg': {
      'es': 'Search all articles...',
      'en': '',
      'fr': '',
    },
    '9ma4is5w': {
      'es': 'For You',
      'en': '',
      'fr': '',
    },
    'bjkgb7cm': {
      'es': 'Sci-Fi',
      'en': '',
      'fr': '',
    },
    'yba6zo69': {
      'es': 'Fiction',
      'en': '',
      'fr': '',
    },
    'lq023yjr': {
      'es': 'Technology',
      'en': '',
      'fr': '',
    },
    'ov7gppxi': {
      'es': 'Ai News',
      'en': '',
      'fr': '',
    },
    '4s3myeju': {
      'es': 'Startups',
      'en': '',
      'fr': '',
    },
    'wbice8oo': {
      'es': 'For You',
      'en': '',
      'fr': '',
    },
    's8fjv7oq': {
      'es': 'Popular Today',
      'en': '',
      'fr': '',
    },
    'p4czr4e4': {
      'es':
          'HSBC is getting back into consumer lending in the us according to...',
      'en': '',
      'fr': '',
    },
    'eb7dhrsc': {
      'es': 'Jackson Hewiit',
      'en': '',
      'fr': '',
    },
    'f3t9ci26': {
      'es': '24',
      'en': '',
      'fr': '',
    },
    'xwzruw8p': {
      'es': '12h',
      'en': '',
      'fr': '',
    },
    'k3hk6fnn': {
      'es': 'Read Now',
      'en': '',
      'fr': '',
    },
    'juf0c058': {
      'es':
          'HSBC is getting back into consumer lending in the us according to...',
      'en': '',
      'fr': '',
    },
    'nvzpr9ht': {
      'es': 'Jackson Hewiit',
      'en': '',
      'fr': '',
    },
    '3xlvmdut': {
      'es': '24',
      'en': '',
      'fr': '',
    },
    'm6mha4q6': {
      'es': '12h',
      'en': '',
      'fr': '',
    },
    '9mom4y6x': {
      'es': 'Read Now',
      'en': '',
      'fr': '',
    },
    'rd8umn20': {
      'es':
          'HSBC is getting back into consumer lending in the us according to...',
      'en': '',
      'fr': '',
    },
    'czbkbyzt': {
      'es': 'Jackson Hewiit',
      'en': '',
      'fr': '',
    },
    'mis64stj': {
      'es': '24',
      'en': '',
      'fr': '',
    },
    '36s21byx': {
      'es': '12h',
      'en': '',
      'fr': '',
    },
    '1hcupp05': {
      'es': 'Read Now',
      'en': '',
      'fr': '',
    },
    'xzwwatrj': {
      'es':
          'HSBC is getting back into consumer lending in the us according to...',
      'en': '',
      'fr': '',
    },
    'n9z3105l': {
      'es': 'Jackson Hewiit',
      'en': '',
      'fr': '',
    },
    'lzt5ho5k': {
      'es': '24',
      'en': '',
      'fr': '',
    },
    '80ygyda2': {
      'es': '12h',
      'en': '',
      'fr': '',
    },
    'xqrjrt64': {
      'es': 'Read Now',
      'en': '',
      'fr': '',
    },
    '0usuapca': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // FeelingPage
  {
    'nz5f1c4x': {
      'es': '¿HOY ME SIENTO?',
      'en': '',
      'fr': '',
    },
    'foq2u8xx': {
      'es': 'Como te sientes hoy...',
      'en': '',
      'fr': '',
    },
    'iglowpea': {
      'es': 'SINTOMAS',
      'en': '',
      'fr': '',
    },
    'xcp3xgmu': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'p4858vhp': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'qvdpqs74': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ggh88gkt': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'b8k72vbe': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ixodx29j': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '9b8uplnb': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ykka1eyy': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '40sp9v2z': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'tvsmica2': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'q76jyml6': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '1uwysfvj': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '7wsfxl1g': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'wo5zmxh8': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'qv97ybj7': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'c18ggxpg': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'u9pk84w2': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '0wue2hu4': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'oay1xjop': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'qnfjfmbz': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '5gb5zwka': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'xo34jvbd': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'zn0pxclr': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'u7vw1v7w': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'm6zfujr4': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'qoqtnu6i': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'y4gxfcz9': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'btlc8brf': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'rfwmtmc9': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '8ign61ly': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'p7np4i9d': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '8qe7xh25': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'tfcmkgsh': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'hgwr1j3w': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'dwrft6bk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'pkvpzxg1': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'qwcr0bhs': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'n5d12sc2': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '05hhrs60': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'scwwxbtb': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '3ekuswyh': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'oz8kapfs': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'bmmhaayy': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'ciz4hlz3': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'amzq2yni': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '9o03vsk9': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'loslv3et': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'dndteg6o': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'anpezm5f': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'lj9dy7cr': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'yxw19ooi': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '5ddd8dz3': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zwt59nef': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '4if32fov': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'qormo21h': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'tc8timio': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '2cqhzks6': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'y4fvc0eq': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'z76rcuu9': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '4vkzt58q': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'm0ge6yib': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'y97j0o4p': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'bvvg7cp4': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'k1nl1b2y': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'mw96e7g9': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'yp82l6a1': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ovxmjd6u': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '7gewr97k': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'd8pab5ve': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '556iqox3': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'oa1js6u6': {
      'es': 'NEGATIVOS',
      'en': '',
      'fr': '',
    },
    'uq9ou9j9': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'zgpqx79l': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'yftlp2ty': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '18m1wikr': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'i3r72ma7': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'b0557jzc': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'yec43cxm': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'fy2jayn6': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'b1ghacny': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'q6ck4kbx': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zn1les2p': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'xj7j4tep': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zntlxbrq': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '7ir102qm': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ljwlm4t1': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'bwe64x5j': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '367at0da': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zk14sw18': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '3ulucb3m': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '8tzq4pfi': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '8awh7bl0': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'mux3ati5': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'bckb2ccp': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '12wbdj7y': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '7ootidfj': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    't5ehlv4d': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '4kpcer17': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'dyxrny8v': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '42aghta4': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'nwl5cux1': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'z9q25id5': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'd0kbgecx': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'lrcgcyp5': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ketzg534': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '5nvfhuf6': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'y7gso7vd': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'x9z8jwap': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'aht0lnaj': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zp5lehw8': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'k1xziy11': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'qgggala2': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '9oucqhqa': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'rd8dvl6x': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'b00b8ekk': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'yy9fx8cb': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'od98r0nm': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'n5j9ywpq': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'clgyoiwg': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'h7b9w7a8': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'd3681u2y': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'hknoav8p': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'zveae1f3': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'l8d6hfwc': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'xfzaa1a7': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'uuails3o': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'lxt53zq9': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'bhsusfq0': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'lt3alpqr': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '2enc4m8t': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'vbpzk4ea': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '6h7rxzj4': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'x83l5qy2': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '3tsao7me': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '59r6gflt': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'yrc3v3zv': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'lperj9xv': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'lipq1rad': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'rdotxf3m': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ohe3oiiu': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'h0q99vxf': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '03rozgll': {
      'es': 'POSITIVOS',
      'en': '',
      'fr': '',
    },
    '7ou14wxu': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'ezh4qe90': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'o1at6t5u': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'fdwas6uc': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'h1qc3z47': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'wme5e2bo': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '1cc5m2os': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '864salrl': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'o086wq3c': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '12y9r4w1': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'axn1d2s3': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '78hz75g2': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'kifqaota': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'gos4wp2e': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'tdxc9op6': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'tuc58r8s': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'tn7ael0c': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ompnq797': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '0kfc3vgm': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'a4h3txcq': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '78x0g7vi': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'w7jt1yiu': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'lmf07ret': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'dixsvdlv': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '5bogu5jc': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'je756mn2': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'loz3v8e6': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'g8zaxwhf': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'o9on0k4h': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'lr1a21ea': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'isaj6fn4': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '9a1zsf3y': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '13dgk9gy': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'r8pejq5t': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'c15rj8nj': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'o9hqjg6d': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '2p8m1f6z': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'tck542x3': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '7m2ebfwk': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'lwk1xdam': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'x9xzyxea': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'lwogosqk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'h4xwmqvw': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '14f5onh5': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'kbvhwngp': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'z6otvyro': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '2etijcuo': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'b9n45qq2': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'bibcp10t': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'x1yu0pgb': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '9q5m7vxf': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '0i6qu0pm': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '933rv88x': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '5emylqrn': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'f06p16vl': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'dxsfk2mq': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'dcn25s37': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'u6nhhh52': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '4h824qah': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'la5hah4y': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'eoo33zuj': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'z8v7l36t': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'li46znhk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '7min9h6i': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '79jx0rzy': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'jth0ps5q': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'dmzsbfxh': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'apk4tp9y': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'tslg1ndn': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'o33h8a9j': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ialqpj8e': {
      'es': 'NEUTROS',
      'en': '',
      'fr': '',
    },
    'yehhf6kf': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '3nmzh2wl': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '6on616or': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '6fllbeuv': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '9p1uzk2h': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '2zdktzey': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'd0y5vvid': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'gdkdvodm': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'r2lu418h': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'cvqjuque': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'cj3050pg': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'mkfqldvm': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'is3na808': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'sho0yorh': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '4ct3djab': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'mowvfrks': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'srlw61er': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'wqbuaocz': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'frx6omzq': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'fuwbt0m5': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'qsrhn2y1': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '2vzjyqml': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'p0bdjfr6': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'lsu5rngn': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'sas196zk': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '43zua58v': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '9fh8kecm': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'qza9thbd': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '1sfurm05': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    '6k60dp7z': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '3yxb0phx': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zhv3ljf9': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'em6wmh0w': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'nng0rkpl': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'bc868kwp': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ta0s6jle': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'fqzxqztm': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    '2tq2k6tk': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'k4bya62w': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '24mbegen': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'ufv4hel9': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'hl7aiwzy': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'qt1t8qnb': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'owy5by7c': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'm2zrormh': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'qvk7rbs2': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '80c7e54f': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '592mzhcy': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'mm8nhqoj': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '0cxs0tsv': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'ktnmu7uu': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    't6clauxq': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '6gfud4ky': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'evus9hcs': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'g79a3h7c': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '0nwrhl4p': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '8gmvk9lf': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'agtjkg7b': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'svbk2eyw': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'psq7e0id': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'qpt5k2ka': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    '9plj4a8f': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '69z1corn': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'd5gyatu4': {
      'es': 'TIPO DE SINTOMA',
      'en': '',
      'fr': '',
    },
    'zw9qryer': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'i95nenw0': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'go14llzn': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    'awjnbrgg': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'zlsnsltg': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    '3ciq6kjl': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'wrk14n70': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // AddPhone
  {
    '9b27f89p': {
      'es': 'Agrega nuevo contacto',
      'en': '',
      'fr': '',
    },
    'kyz9surn': {
      'es': 'Añade el nombre del contacto',
      'en': '',
      'fr': '',
    },
    'gy4bikls': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'byuiymsa': {
      'es': 'Aquí va el nombre',
      'en': '',
      'fr': '',
    },
    'o37geslz': {
      'es': '\n',
      'en': '',
      'fr': '',
    },
    'xv86i9r2': {
      'es': 'Añade el número del contacto',
      'en': '',
      'fr': '',
    },
    'o0v0t3qp': {
      'es': '##-##-##-##-##',
      'en': '',
      'fr': '',
    },
    'vem750rc': {
      'es': '\n',
      'en': '',
      'fr': '',
    },
    'vxwn3zhd': {
      'es': 'Añade la foto del contacto',
      'en': '',
      'fr': '',
    },
    'ge16qni5': {
      'es': 'AÑADIR',
      'en': '',
      'fr': '',
    },
    'uznscb39': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // settingPage
  {
    'px7tylqd': {
      'es': 'Settings Page',
      'en': '',
      'fr': '',
    },
    'm0dpvi2o': {
      'es': 'Please evaluate your options below.',
      'en': '',
      'fr': '',
    },
    '3rqrc09w': {
      'es': 'My Subscription',
      'en': '',
      'fr': '',
    },
    '1692lf9w': {
      'es': 'Getting Started',
      'en': '',
      'fr': '',
    },
    'kxsfhebd': {
      'es': 'About Us',
      'en': '',
      'fr': '',
    },
    'iuk4vptd': {
      'es': 'Help',
      'en': '',
      'fr': '',
    },
    'ijrvicpx': {
      'es': 'Privacy Policy',
      'en': '',
      'fr': '',
    },
    'kjjluboi': {
      'es': 'Terms & Conditions',
      'en': '',
      'fr': '',
    },
    '8tigulmo': {
      'es': 'Follow us on',
      'en': '',
      'fr': '',
    },
    '9m0njtv7': {
      'es': 'App Versions',
      'en': '',
      'fr': '',
    },
    'estwmcgi': {
      'es': 'v0.0.1',
      'en': '',
      'fr': '',
    },
    '6wyjdarb': {
      'es': 'Log Out',
      'en': '',
      'fr': '',
    },
    '4tyrnmcc': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // OnboardingPage
  {
    'd7a6xyqa': {
      'es': 'BIENVENIDO',
      'en': '',
      'fr': '',
    },
    'c3vz8vsz': {
      'es':
          'Gracias por unirte!.\nIngresa a tus cuentas con un toque o si es tu primera vez, crea tu cuenta para iniciar con la experiencia!.',
      'en': '',
      'fr': '',
    },
    'fhfcogd9': {
      'es': 'REGISTRATE',
      'en': '',
      'fr': '',
    },
    'a7i4lhqy': {
      'es': 'INICIA SESION',
      'en': '',
      'fr': '',
    },
    'tgmwvmbh': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // UserPhotosPage
  {
    'ojgp1io4': {
      'es': 'Crear MiAmigo',
      'en': '',
      'fr': '',
    },
    'j3e0sels': {
      'es': 'VAMOS A PERSONALIZAR TU USUARIO',
      'en': '',
      'fr': '',
    },
    '3842vuw7': {
      'es': 'Sube tú imagen de perfil',
      'en': '',
      'fr': '',
    },
    '8owjrjyk': {
      'es': 'Sube la imagen de tú Primer contacto',
      'en': '',
      'fr': '',
    },
    '641t0i84': {
      'es': 'Sube la imagen de tú Segundo contacto',
      'en': '',
      'fr': '',
    },
    'j2rt6wzg': {
      'es': 'CONTINUAR',
      'en': '',
      'fr': '',
    },
    '14ehgf8n': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // CreateAccountPage
  {
    '8e7wkd9v': {
      'es': 'Crear MiAmigo',
      'en': '',
      'fr': '',
    },
    'gd4purk9': {
      'es': 'Crear Usuario',
      'en': '',
      'fr': '',
    },
    '9g8b6juq': {
      'es': 'VAMOS A CREAR TU USUARIO',
      'en': '',
      'fr': '',
    },
    '9mcf96cn': {
      'es': 'Nombre y Apellido',
      'en': '',
      'fr': '',
    },
    '0enrcuce': {
      'es': 'Correo Electronico',
      'en': '',
      'fr': '',
    },
    'mt9p9wex': {
      'es': 'Ingresa tú número telefonico',
      'en': '',
      'fr': '',
    },
    'eu7ndylb': {
      'es': 'Fecha de Nacimiento',
      'en': '',
      'fr': '',
    },
    'rx2avhq4': {
      'es': 'Nombre o Apodo de tu primer contacto',
      'en': '',
      'fr': '',
    },
    'ak9da7k5': {
      'es': 'Telefono de su primer contacto',
      'en': '',
      'fr': '',
    },
    'qe6y2h5t': {
      'es': 'Nombre o Apodo de su segundo contacto',
      'en': '',
      'fr': '',
    },
    'ba4uqeuz': {
      'es': 'Telefono de su segundo contacto',
      'en': '',
      'fr': '',
    },
    '8r39ero2': {
      'es': 'Elige la categoria de capacidad especial',
      'en': '',
      'fr': '',
    },
    'hst1u3qm': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    '96uxabhk': {
      'es': 'Elige el tipo de capacidad especial',
      'en': '',
      'fr': '',
    },
    '9b02x1kx': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    'kr44wzo3': {
      'es': 'Elige el tipo de capacidad especial',
      'en': '',
      'fr': '',
    },
    '4rs0q15k': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    'knua4yjt': {
      'es': 'Elige el tipo de capacidad especial',
      'en': '',
      'fr': '',
    },
    'ezmh195e': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    'o920h1cq': {
      'es': 'Elige el tipo de capacidad especial',
      'en': '',
      'fr': '',
    },
    'q7we4y2o': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    '36iq07jl': {
      'es': 'CONTINUAR',
      'en': '',
      'fr': '',
    },
    'u79dstgx': {
      'es': 'Crear Tutor',
      'en': '',
      'fr': '',
    },
    'jrc6qru9': {
      'es': 'CREA TU CUENTA DE TUTOR',
      'en': '',
      'fr': '',
    },
    'zwa5xncb': {
      'es': 'Comienza llenando los datos que se piden.',
      'en': '',
      'fr': '',
    },
    'l5fm1cv6': {
      'es': 'Nombre y Apellido',
      'en': '',
      'fr': '',
    },
    '85ky6v0i': {
      'es': 'Correo Electronico',
      'en': '',
      'fr': '',
    },
    'ftcrohvf': {
      'es': 'Fecha de Nacimiento',
      'en': '',
      'fr': '',
    },
    'duylgo33': {
      'es': 'Telefono celular',
      'en': '',
      'fr': '',
    },
    'i7ha3q24': {
      'es': 'Contraseña',
      'en': '',
      'fr': '',
    },
    '040t8jr5': {
      'es': 'Repita su contraseña',
      'en': '',
      'fr': '',
    },
    '5qagjryg': {
      'es': 'La Contraseña no coincide, revísalo...',
      'en': '',
      'fr': '',
    },
    'v52lb0op': {
      'es': 'De quien eres tutor',
      'en': '',
      'fr': '',
    },
    'l6p4itw8': {
      'es': 'Buscar',
      'en': '',
      'fr': '',
    },
    'sr2dro9b': {
      'es': 'CREAR',
      'en': '',
      'fr': '',
    },
    '2ulwakxa': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // TutorPage
  {
    'kljbrvio': {
      'es': 'COMO ME SIENTO',
      'en': '',
      'fr': '',
    },
    's97nu6p4': {
      'es': 'Contacta',
      'en': '',
      'fr': '',
    },
    'cfsmzfl7': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '0rqr5qqx': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '98a1xqvm': {
      'es': 'Añadir otro...',
      'en': '',
      'fr': '',
    },
    'a6hy6zn2': {
      'es': 'Juega',
      'en': '',
      'fr': '',
    },
    'px2t2rs0': {
      'es': 'BUSCA TU JUEGO FAVORITO...',
      'en': '',
      'fr': '',
    },
    '9k55u7t5': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'kq1x79f6': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    '70sivnfr': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    '1o9qbqep': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'k5eccwi8': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'r30nx9yv': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'dqnejh0o': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'du5xvt4c': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '104ljz07': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'rmzb0ime': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'io0tpof9': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'pga190zy': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    't21f4l5e': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    '5uh1jspx': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'yngj48fg': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    '4l0a4j0g': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '4ilgroec': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'i1hgg0gd': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'kg1cvwz3': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'ambw57gh': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'nosu4glf': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'aptid5uo': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'oqnrxl4w': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'b5o8gsda': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'ps8fviwz': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'mghik8tm': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'wwgssffr': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'wh71g709': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    'm9frv9j3': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    '3flnzza7': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'kkz4xv14': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'kbb0bu6m': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '65f3nfs7': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'dgu2124c': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    '0tbv3ita': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'fmgipxbj': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '7zfi78na': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    '7yl55a6k': {
      'es': 'DIFICULTAD:',
      'en': '',
      'fr': '',
    },
    'nbnabazp': {
      'es': 'Hello World',
      'en': '',
      'fr': '',
    },
    'fvzm0m4a': {
      'es': 'NAME GAME1',
      'en': '',
      'fr': '',
    },
    '7u3ja25y': {
      'es': '50%',
      'en': '',
      'fr': '',
    },
    'ini0e2g4': {
      'es': 'Descubre',
      'en': '',
      'fr': '',
    },
    'ljpk76hf': {
      'es': 'QUE QUIERES LEER HOY...',
      'en': '',
      'fr': '',
    },
    '78y6gev5': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'p1vjplvg': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'ol8jnfac': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'x7oyligr': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'nn0gpjya': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'aczjdddh': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'b7vei31s': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    '5hm8evjx': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    '3bo7t2x5': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    '4s644odd': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'ojjhtndd': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'kpq1ppol': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'vlz01yuk': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'mtbe5lrb': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'q4v7mp7b': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    's2udn2zn': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    'vewf605j': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    'k9n2o3bu': {
      'es': 'El trenecito que si pudo.',
      'en': '',
      'fr': '',
    },
    'y4ny8q76': {
      'es': 'By Ellen Fraud',
      'en': '',
      'fr': '',
    },
    'g6djpmyg': {
      'es': '5 min ',
      'en': '',
      'fr': '',
    },
    '2humjz1h': {
      'es': 'Narración Disponible',
      'en': '',
      'fr': '',
    },
    '66ffy7u7': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // TutorsPhotosPage
  {
    '960817mh': {
      'es': 'Crear MiAmigo',
      'en': '',
      'fr': '',
    },
    'exvrwhff': {
      'es': 'VAMOS A PERSONALIZAR TU USUARIO',
      'en': '',
      'fr': '',
    },
    'ning63f0': {
      'es': 'Sube tú imagen de perfil',
      'en': '',
      'fr': '',
    },
    'ujza31ia': {
      'es': 'CONTINUAR',
      'en': '',
      'fr': '',
    },
    '6ve8tqsc': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // ModalVerification
  {
    'y3evh88i': {
      'es': 'Mucho gusto...',
      'en': '',
      'fr': '',
    },
    'lib918c7': {
      'es':
          'Se ha enviado un correo de verificación a tu cuenta registrada, es necesario que entres al link enviado para poder continuar con la experiencia...\n\nVe a tu correo y da click en el link, si no encuentras nuestro correo en tu bandeja de entrada, revisa tu bandeja de correo no deseado o SPAM, luego de verificarte regresa a MiAmigo.',
      'en': '',
      'fr': '',
    },
    'swi1ni36': {
      'es': 'Verificar',
      'en': '',
      'fr': '',
    },
  },
  // ChargePhoto
  {
    'cprnm9kp': {
      'es': 'Carga tu foto de perfil...',
      'en': '',
      'fr': '',
    },
    '19hpdhjf': {
      'es':
          'Es momento de subir la foto con la que quieres que se identifique tú perfil.',
      'en': '',
      'fr': '',
    },
    '3wv43t3n': {
      'es': 'Subir Imagen',
      'en': '',
      'fr': '',
    },
    '15b7slfw': {
      'es': 'Guardar y continuar',
      'en': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'g7rjfg3w': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '1qr55jop': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '4wzkvy20': {
      'es':
          'Permite que MiAmigo tenga acceso a tu ubicación por temas de seguridad y localización en caso de emergencias.',
      'en': '',
      'fr': '',
    },
    'hf43ubqk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '9103roes': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'w1zyz3sd': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'fsoo4pb5': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'wagw195b': {
      'es': '',
      'en': '',
      'fr': '',
    },
    's24ifw5x': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ahn6ggxs': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'bo4wpnce': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'odrt75cj': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '1t700uc0': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'b86tvqen': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'hx0oi9c6': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '3uhrobr2': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'eh0fyawk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'i00at80v': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ksdtxho1': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '5m40wdm9': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'kglo5dqn': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '6tknock5': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '1erdqcfk': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'ef1t16o3': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'zvyjak9y': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'f4v0sj41': {
      'es': '',
      'en': '',
      'fr': '',
    },
    '7c4fzn5c': {
      'es': '',
      'en': '',
      'fr': '',
    },
    'h8mr9sdi': {
      'es': '',
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
