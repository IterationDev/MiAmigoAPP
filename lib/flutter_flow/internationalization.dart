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
    'obd7echj': {
      'es': 'Tu Tutor tiene algo que enseñarte, aprende con sus tutoriales...',
      'en': '',
      'fr': '',
    },
    'nylpu3ek': {
      'es': 'Busca lo que quieras aprender...',
      'en': '',
      'fr': '',
    },
    'qa88r9mp': {
      'es': 'Tareas Del Hogar',
      'en': '',
      'fr': '',
    },
    '3kd5m10t': {
      'es': 'Actividades Diarias',
      'en': '',
      'fr': '',
    },
    'j1y87ry5': {
      'es': 'Actividades Especificas',
      'en': '',
      'fr': '',
    },
    'jg6fv4pz': {
      'es': 'Recordatorios',
      'en': '',
      'fr': '',
    },
    'oojrhp1u': {
      'es': 'Otros',
      'en': '',
      'fr': '',
    },
    '5ano4hmy': {
      'es': 'Tareas Del Hogar',
      'en': '',
      'fr': '',
    },
    'vlqywuiu': {
      'es': 'Titulo del Tutorial',
      'en': '',
      'fr': '',
    },
    'qt8yaoes': {
      'es': 'Tipo:',
      'en': '',
      'fr': '',
    },
    'eyplfprw': {
      'es': 'AREA',
      'en': '',
      'fr': '',
    },
    'ylxpnj3h': {
      'es': 'Duracion',
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
      'es': 'Qué sientes hoy...',
      'en': '',
      'fr': '',
    },
    'iglowpea': {
      'es': 'TODOS',
      'en': '',
      'fr': '',
    },
    'oa1js6u6': {
      'es': 'NEGATIVOS',
      'en': '',
      'fr': '',
    },
    '03rozgll': {
      'es': 'POSITIVOS',
      'en': '',
      'fr': '',
    },
    'ialqpj8e': {
      'es': 'NEUTROS',
      'en': '',
      'fr': '',
    },
    'qbzu6q9t': {
      'es': 'SINTOMAS',
      'en': '',
      'fr': '',
    },
    'wrk14n70': {
      'es': 'Home',
      'en': '',
      'fr': '',
    },
  },
  // AddPhonePage
  {
    '9b27f89p': {
      'es': 'Agregar nuevo contacto',
      'en': '',
      'fr': '',
    },
    'kyz9surn': {
      'es': 'Añade el nombre del contacto',
      'en': '',
      'fr': '',
    },
    'gy4bikls': {
      'es': 'Nombre',
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
    'mmfhfh9k': {
      'es': 'Telefono',
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
  // SettingPage
  {
    '9x79n7ud': {
      'es': 'Ajustes',
      'en': '',
      'fr': '',
    },
    '3rqrc09w': {
      'es': 'Suscripción',
      'en': '',
      'fr': '',
    },
    'kxsfhebd': {
      'es': 'Sobre Nosotros',
      'en': '',
      'fr': '',
    },
    'iuk4vptd': {
      'es': 'Ayuda',
      'en': '',
      'fr': '',
    },
    'ijrvicpx': {
      'es': 'Pólitica de Privacidad',
      'en': '',
      'fr': '',
    },
    'kjjluboi': {
      'es': 'Términos y COndiciones',
      'en': '',
      'fr': '',
    },
    '8tigulmo': {
      'es': 'Siguenos en:',
      'en': '',
      'fr': '',
    },
    '9m0njtv7': {
      'es': 'App Versions',
      'en': '',
      'fr': '',
    },
    '6wyjdarb': {
      'es': 'Salir de mi cuenta',
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
    'q10xpqem': {
      'es': '1er Contacto',
      'en': '',
      'fr': '',
    },
    'ak9da7k5': {
      'es': 'Telefono',
      'en': '',
      'fr': '',
    },
    'qe6y2h5t': {
      'es': '2do contacto',
      'en': '',
      'fr': '',
    },
    'ba4uqeuz': {
      'es': 'Telefono',
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
      'es': 'MiAmigo\'s',
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
      'es': 'Tutoriales',
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
  // feelingTag
  {
    'd8her9kf': {
      'es': 'Indica que tanto:',
      'en': '',
      'fr': '',
    },
    'v6oy1bnc': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'shpmgmiy': {
      'es': 'LEVE',
      'en': '',
      'fr': '',
    },
    '60575gqc': {
      'es': 'MEDIO',
      'en': '',
      'fr': '',
    },
    'snzzi35l': {
      'es': 'FUERTE',
      'en': '',
      'fr': '',
    },
    'jdleddyq': {
      'es': '',
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
    'kwoxmpck': {
      'es':
          'Permite que MiAmigo tenga acceso a tu microfono por temas de seguridad y usabilidad dentro de la APP.',
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
