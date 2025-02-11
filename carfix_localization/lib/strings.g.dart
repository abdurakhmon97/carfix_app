/// Generated file. Do not edit.
///
/// Original: lib
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 58 (29 per locale)
///
/// Built on 2025-02-10 at 07:27 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ru;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ru) // set locale
/// - Locale locale = AppLocale.ru.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ru) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ru(languageCode: 'ru', build: Translations.build),
	uz(languageCode: 'uz', build: StringsUz.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of tr).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = tr.someKey.anotherKey;
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
Translations get tr => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final tr = Translations.of(context); // Get tr variable.
/// String a = tr.someKey.anotherKey; // Use tr variable.
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.tr.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get tr => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
typedef StringsRu = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final tr = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get applicationName => 'Carfix';
	late final StringsLoginRu login = StringsLoginRu._(_root);
	late final StringsRegistrationRu registration = StringsRegistrationRu._(_root);
	late final StringsUserSelectTypeRu userSelectType = StringsUserSelectTypeRu._(_root);
	late final StringsServiceListRu serviceList = StringsServiceListRu._(_root);
	late final StringsOtpRu otp = StringsOtpRu._(_root);
	late final StringsOilRu oil = StringsOilRu._(_root);
	late final StringsTyreRu tyre = StringsTyreRu._(_root);
	late final StringsHomeRu home = StringsHomeRu._(_root);
	late final StringsSharedRu shared = StringsSharedRu._(_root);
}

// Path: login
class StringsLoginRu {
	StringsLoginRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Вход';
	String get forgotPassword => 'Забыли пароль?';
	String get register => 'Зарегистрироваться';
}

// Path: registration
class StringsRegistrationRu {
	StringsRegistrationRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Регистрация';
}

// Path: userSelectType
class StringsUserSelectTypeRu {
	StringsUserSelectTypeRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get driver => 'Водитель';
	String get mechanic => 'Механик';
}

// Path: serviceList
class StringsServiceListRu {
	StringsServiceListRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Наши сервисы';
}

// Path: otp
class StringsOtpRu {
	StringsOtpRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get verification => 'СМС подтверждение';
	TextSpan sentSmsTo({required InlineSpan number}) => TextSpan(children: [
		const TextSpan(text: 'СМС с кодом отправлен на номер '),
		number,
	]);
	String get didNotReceive => 'Не получили код?';
	String get retry => 'Отправить снова';
	String get verify => 'Подтвердить';
}

// Path: oil
class StringsOilRu {
	StringsOilRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Замена масла';
	String get changeMileage => 'Пробег во время замены';
	String get mileageToChange => 'Пробег до следующей замены';
	String get cabinFilterChanged => 'Заменен фильтр салона?';
}

// Path: tyre
class StringsTyreRu {
	StringsTyreRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Шины/колеса';
	String get changeMileage => 'Пробег во время замены';
	String get mileageToChange => 'Пробег до следующей перекитки';
	String get xStyleChanged => 'Х-образная перекитка?';
}

// Path: home
class StringsHomeRu {
	StringsHomeRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addCar => 'Добавить машину';
}

// Path: shared
class StringsSharedRu {
	StringsSharedRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get phoneNumber => 'Номер телефона';
	String get password => 'Пароль';
	String get repeatPassword => 'Повторите пароль';
	String get yes => 'Да';
	String get no => 'Нет';
	String get save => 'Сохранить';
	String get next => 'Далее';
}

// Path: <root>
class StringsUz extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	StringsUz.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.uz,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uz>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final StringsUz _root = this; // ignore: unused_field

	// Translations
	@override String get applicationName => 'Carfix';
	@override late final StringsLoginUz login = StringsLoginUz._(_root);
	@override late final StringsRegistrationUz registration = StringsRegistrationUz._(_root);
	@override late final StringsUserSelectTypeUz userSelectType = StringsUserSelectTypeUz._(_root);
	@override late final StringsServiceListUz serviceList = StringsServiceListUz._(_root);
	@override late final StringsOtpUz otp = StringsOtpUz._(_root);
	@override late final StringsOilUz oil = StringsOilUz._(_root);
	@override late final StringsTyreUz tyre = StringsTyreUz._(_root);
	@override late final StringsHomeUz home = StringsHomeUz._(_root);
	@override late final StringsSharedUz shared = StringsSharedUz._(_root);
}

// Path: login
class StringsLoginUz extends StringsLoginRu {
	StringsLoginUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirish';
	@override String get forgotPassword => 'Parolni unutdingizmi?';
	@override String get register => 'Ro\'yxatdan o\'tish';
}

// Path: registration
class StringsRegistrationUz extends StringsRegistrationRu {
	StringsRegistrationUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ro\'yxatdan o\'tish';
}

// Path: userSelectType
class StringsUserSelectTypeUz extends StringsUserSelectTypeRu {
	StringsUserSelectTypeUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get driver => 'Haydovchi';
	@override String get mechanic => 'Usta';
}

// Path: serviceList
class StringsServiceListUz extends StringsServiceListRu {
	StringsServiceListUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bizning xizmatlarimiz';
}

// Path: otp
class StringsOtpUz extends StringsOtpRu {
	StringsOtpUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get verification => 'SMS tasdiqlash';
	@override TextSpan sentSmsTo({required InlineSpan number}) => TextSpan(children: [
		const TextSpan(text: 'SMS kod '),
		number,
		const TextSpan(text: ' raqamiga yuborildi'),
	]);
	@override String get didNotReceive => 'Kodni olmadingizmi?';
	@override String get retry => 'Qayta jo\'natish';
	@override String get verify => 'Tasdiqlash';
}

// Path: oil
class StringsOilUz extends StringsOilRu {
	StringsOilUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Moy almashtirish';
	@override String get changeMileage => 'Almashtirish paytidagi probeg';
	@override String get mileageToChange => 'Keyingi almashtirishgacha probeg';
	@override String get cabinFilterChanged => 'Salon filtri almashtirildimi?';
}

// Path: tyre
class StringsTyreUz extends StringsTyreRu {
	StringsTyreUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shinalar/g\'ildiraklar';
	@override String get changeMileage => 'Almashtirish paytidagi probeg';
	@override String get mileageToChange => 'Keyingi g\'ildirak almashinuvi';
	@override String get xStyleChanged => 'X-usulda almashtirildimi?';
}

// Path: home
class StringsHomeUz extends StringsHomeRu {
	StringsHomeUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get addCar => 'Mashina qo\'shish';
}

// Path: shared
class StringsSharedUz extends StringsSharedRu {
	StringsSharedUz._(StringsUz root) : this._root = root, super._(root);

	@override final StringsUz _root; // ignore: unused_field

	// Translations
	@override String get phoneNumber => 'Telefon raqam';
	@override String get password => 'Parol';
	@override String get repeatPassword => 'Parolni qaytaring';
	@override String get yes => 'Ha';
	@override String get no => 'Yo\'q';
	@override String get save => 'Saqlash';
	@override String get next => 'Keyingi';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'applicationName': return 'Carfix';
			case 'login.title': return 'Вход';
			case 'login.forgotPassword': return 'Забыли пароль?';
			case 'login.register': return 'Зарегистрироваться';
			case 'registration.title': return 'Регистрация';
			case 'userSelectType.driver': return 'Водитель';
			case 'userSelectType.mechanic': return 'Механик';
			case 'serviceList.title': return 'Наши сервисы';
			case 'otp.verification': return 'СМС подтверждение';
			case 'otp.sentSmsTo': return ({required InlineSpan number}) => TextSpan(children: [
				const TextSpan(text: 'СМС с кодом отправлен на номер '),
				number,
			]);
			case 'otp.didNotReceive': return 'Не получили код?';
			case 'otp.retry': return 'Отправить снова';
			case 'otp.verify': return 'Подтвердить';
			case 'oil.title': return 'Замена масла';
			case 'oil.changeMileage': return 'Пробег во время замены';
			case 'oil.mileageToChange': return 'Пробег до следующей замены';
			case 'oil.cabinFilterChanged': return 'Заменен фильтр салона?';
			case 'tyre.title': return 'Шины/колеса';
			case 'tyre.changeMileage': return 'Пробег во время замены';
			case 'tyre.mileageToChange': return 'Пробег до следующей перекитки';
			case 'tyre.xStyleChanged': return 'Х-образная перекитка?';
			case 'home.addCar': return 'Добавить машину';
			case 'shared.phoneNumber': return 'Номер телефона';
			case 'shared.password': return 'Пароль';
			case 'shared.repeatPassword': return 'Повторите пароль';
			case 'shared.yes': return 'Да';
			case 'shared.no': return 'Нет';
			case 'shared.save': return 'Сохранить';
			case 'shared.next': return 'Далее';
			default: return null;
		}
	}
}

extension on StringsUz {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'applicationName': return 'Carfix';
			case 'login.title': return 'Kirish';
			case 'login.forgotPassword': return 'Parolni unutdingizmi?';
			case 'login.register': return 'Ro\'yxatdan o\'tish';
			case 'registration.title': return 'Ro\'yxatdan o\'tish';
			case 'userSelectType.driver': return 'Haydovchi';
			case 'userSelectType.mechanic': return 'Usta';
			case 'serviceList.title': return 'Bizning xizmatlarimiz';
			case 'otp.verification': return 'SMS tasdiqlash';
			case 'otp.sentSmsTo': return ({required InlineSpan number}) => TextSpan(children: [
				const TextSpan(text: 'SMS kod '),
				number,
				const TextSpan(text: ' raqamiga yuborildi'),
			]);
			case 'otp.didNotReceive': return 'Kodni olmadingizmi?';
			case 'otp.retry': return 'Qayta jo\'natish';
			case 'otp.verify': return 'Tasdiqlash';
			case 'oil.title': return 'Moy almashtirish';
			case 'oil.changeMileage': return 'Almashtirish paytidagi probeg';
			case 'oil.mileageToChange': return 'Keyingi almashtirishgacha probeg';
			case 'oil.cabinFilterChanged': return 'Salon filtri almashtirildimi?';
			case 'tyre.title': return 'Shinalar/g\'ildiraklar';
			case 'tyre.changeMileage': return 'Almashtirish paytidagi probeg';
			case 'tyre.mileageToChange': return 'Keyingi g\'ildirak almashinuvi';
			case 'tyre.xStyleChanged': return 'X-usulda almashtirildimi?';
			case 'home.addCar': return 'Mashina qo\'shish';
			case 'shared.phoneNumber': return 'Telefon raqam';
			case 'shared.password': return 'Parol';
			case 'shared.repeatPassword': return 'Parolni qaytaring';
			case 'shared.yes': return 'Ha';
			case 'shared.no': return 'Yo\'q';
			case 'shared.save': return 'Saqlash';
			case 'shared.next': return 'Keyingi';
			default: return null;
		}
	}
}
