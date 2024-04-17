import 'package:convenience_types/util/form_utils.dart';
import 'package:poc_agora_io/src/shared/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const String testString = 'test';
  const String testEmptyString = '';
  const int testNegative = -1;
  const int testZero = 0;
  const int testPositive = 1;
  const String testInvalidEmail = 'asdafsdf';
  const String testValidEmail = 'a@b.com';
  const String atLeast8characters = 'asdfasfd';
  const String atLeast1Number = '1';
  const String atLeast1Letter = 'a';
  const String atLeast1SpecialCharacter = '@';
  const String validPassword = 'test@123';
  const String anotherPassword = 'password';
  List<String> validate<T>({
    required List<String? Function(T)> validators,
    required T value,
  }) {
    List<String> errorMsgs = [];
    for (var validator in validators) {
      String? errorMsg = validator(value);
      if (errorMsg != null) {
        errorMsgs.add(errorMsg);
      }
    }
    return errorMsgs;
  }

  List<String> validateIsEqual<T>({
    required List<String? Function(T, T)> validators,
    required T value,
    required T valueConfirmation,
  }) {
    List<String> errorMsgs = [];
    for (var validator in validators) {
      String? errorMsg = validator(value, valueConfirmation);
      if (errorMsg != null) {
        errorMsgs.add(errorMsg);
      }
    }
    return errorMsgs;
  }

  group(
    'Validators.required',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG] if inputedString.isEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.required,
            value: testEmptyString,
          );
          expect(errorMsgs, [GENERIC_MANDATORY_FIELD_MSG]);
        },
      );
      test(
        'It should return [] if inputedString.isNotEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.required,
            value: testString,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'Valiators.requiredDynamic',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG] if inputValue == null',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.requiredDynamic,
            value: null,
          );
          expect(errorMsgs, [GENERIC_MANDATORY_FIELD_MSG]);
        },
      );
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG] if inputValue is String, and inputValue.isEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.requiredDynamic,
            value: testEmptyString,
          );
          expect(errorMsgs, [GENERIC_MANDATORY_FIELD_MSG]);
        },
      );
      test(
        'It should return [] if inputValue is String, and inputValue.isNotEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.required,
            value: testString,
          );
          expect(errorMsgs, []);
        },
      );
      test(
        'It should return [] if inputValue != null',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.requiredDynamic,
            value: 123,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'Validators.greaterThanZero',
    () {
      test(
        'It should return SHOULD_BE_GREATER_THAN_ZERO_MSG, if inputvalue < 0',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.greaterThanZero,
            value: testNegative,
          );
          expect(errorMsgs, [SHOULD_BE_GREATER_THAN_ZERO_MSG]);
        },
      );
      test(
        'It should return SHOULD_BE_GREATER_THAN_ZERO_MSG, if inputvalue == 0',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.greaterThanZero,
            value: testZero,
          );
          expect(errorMsgs, [SHOULD_BE_GREATER_THAN_ZERO_MSG]);
        },
      );
      test(
        'It should return [], if inputvalue > 0',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.greaterThanZero,
            value: testPositive,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'Validator.email',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, INVALID_EMAIL_MSG] if inputedEmail.isEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.email,
            value: testEmptyString,
          );
          expect(errorMsgs, [GENERIC_MANDATORY_FIELD_MSG, INVALID_EMAIL_MSG]);
        },
      );
      test(
        'It should return [INVALID_EMAIL_MSG] if inputedEmail.isNotEmpty, but it has no match with EMAIL_REGEX',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.email,
            value: testInvalidEmail,
          );
          expect(errorMsgs, [INVALID_EMAIL_MSG]);
        },
      );
      test(
        'It should return [] if inputedEmail.isNotEmpty, but it has match with EMAIL_REGEX',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.email,
            value: testValidEmail,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'Validators.password',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, PasswordRequirementsEnum.atLeastEightCharacters.toString(), PasswordRequirementsEnum.atLeastOneNumber.toString(), PasswordRequirementsEnum.atLeastOneLetter.toString(), PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString()] if inputtedPassword.isEmpty',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: testEmptyString,
          );
          expect(errorMsgs, [
            GENERIC_MANDATORY_FIELD_MSG,
            PasswordRequirementsEnum.atLeastEightCharacters.toString(),
            PasswordRequirementsEnum.atLeastOneNumber.toString(),
            PasswordRequirementsEnum.atLeastOneLetter.toString(),
            PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),
          ]);
        },
      );
      test(
        'It should return [PasswordRequirementsEnum.atLeastOneNumber.toString(), PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(), ] if inputtedPassword.isNotEmpty & inputtedPassword.length >= 8',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: atLeast8characters,
          );
          expect(errorMsgs, [
            PasswordRequirementsEnum.atLeastOneNumber.toString(),
            PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),
          ]);
        },
      );
      test(
        'It should return [PasswordRequirementsEnum.atLeastEightCharacters.toString(), PasswordRequirementsEnum.atLeastOneLetter.toString(), PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),] if inputtedPassword.isNotEmpty ',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: atLeast1Number,
          );
          expect(errorMsgs, [
            PasswordRequirementsEnum.atLeastEightCharacters.toString(),
            PasswordRequirementsEnum.atLeastOneLetter.toString(),
            PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),
          ]);
        },
      );
      test(
        'It should return [PasswordRequirementsEnum.atLeastEightCharacters.toString(), PasswordRequirementsEnum.atLeastOneNumber.toString(), PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),] if inputtedPassword.isNotEmpty ',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: atLeast1Letter,
          );
          expect(errorMsgs, [
            PasswordRequirementsEnum.atLeastEightCharacters.toString(),
            PasswordRequirementsEnum.atLeastOneNumber.toString(),
            PasswordRequirementsEnum.atLeastOneSpecialCharacter.toString(),
          ]);
        },
      );
      test(
        'It should return [PasswordRequirementsEnum.atLeastEightCharacters.toString(), PasswordRequirementsEnum.atLeastOneNumber.toString(), PasswordRequirementsEnum.atLeastOneLetter.toString(),] if inputtedPassword.isNotEmpty ',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: atLeast1SpecialCharacter,
          );
          expect(errorMsgs, [
            PasswordRequirementsEnum.atLeastEightCharacters.toString(),
            PasswordRequirementsEnum.atLeastOneNumber.toString(),
            PasswordRequirementsEnum.atLeastOneLetter.toString(),
          ]);
        },
      );
      test(
        'It should return [] if inputtedPassword.isNotEmpty, inputtedPassword.length >=8 && inputtedPassword has match with AT_LEAST_ONE_NUMBER_REGEX, AT_LEAST_ONE_LETTER_REGEX and AT_LEAST_ONE_SPECIAL_CHARACTER_REGEX',
        () {
          List<String> errorMsgs = validate(
            validators: Validators.password,
            value: validPassword,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'mapPasswordValidationToRequirementsSet',
    () {
      test(
        'it should return an empty set if inputValue.isEmpty',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(testEmptyString),
            <PasswordRequirementsEnum>{},
          );
        },
      );
      test(
        'it should return a set containing PasswordRequirementsEnum.atLeastEightCharacters and PasswordRequirementsEnum.atLeastOneLetter if inputValue.isNotEmpty, inputValue.length>=8, and inputValue has match only with AT_LEAST_ONE_LETTER_REGEX',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(
                atLeast8characters),
            <PasswordRequirementsEnum>{
              PasswordRequirementsEnum.atLeastEightCharacters,
              PasswordRequirementsEnum.atLeastOneLetter,
            },
          );
        },
      );
      test(
        'it should return a set containing PasswordRequirementsEnum.atLeastOneNumber if inputValue.isNotEmpty, and inputValue has match only with AT_LEAST_ONE_NUMBER_REGEX',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(atLeast1Number),
            <PasswordRequirementsEnum>{
              PasswordRequirementsEnum.atLeastOneNumber,
            },
          );
        },
      );
      test(
        'it should return a set containing PasswordRequirementsEnum.atLeastOneLetter if inputValue.isNotEmpty, and inputValue has match only with AT_LEAST_ONE_LETTER_REGEX',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(atLeast1Letter),
            <PasswordRequirementsEnum>{
              PasswordRequirementsEnum.atLeastOneLetter,
            },
          );
        },
      );
      test(
        'it should return a set containing PasswordRequirementsEnum.atLeastOneSpecialCharacter if inputValue.isNotEmpty, and inputValue has match only with AT_LEAST_ONE_SPECIAL_CHARACTER_REGEX',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(
                atLeast1SpecialCharacter),
            <PasswordRequirementsEnum>{
              PasswordRequirementsEnum.atLeastOneSpecialCharacter,
            },
          );
        },
      );
      test(
        'it should return a set containing PasswordRequirementsEnum.atLeastOneSpecialCharacter, PasswordRequirementsEnum.atLeastOneNumber, PasswordRequirementsEnum.atLeastOneLetter, PasswordRequirementsEnum.atLeastOneSpecialCharacter, if inputValue.isNotEmpty, inputValue.length >= 8 and inputValue has match with AT_LEAST_ONE_NUMBER_REGEX, AT_LEAST_ONE_LETTER_REGEX and AT_LEAST_ONE_SPECIAL_CHARACTER_REGEX',
        () {
          expect(
            Validators.mapPasswordValidationToRequirementsSet(validPassword),
            <PasswordRequirementsEnum>{
              PasswordRequirementsEnum.atLeastEightCharacters,
              PasswordRequirementsEnum.atLeastOneNumber,
              PasswordRequirementsEnum.atLeastOneLetter,
              PasswordRequirementsEnum.atLeastOneSpecialCharacter,
            },
          );
        },
      );
    },
  );
  group(
    'Validators.passwordIsEqual',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, PASSWORDS_MUST_BE_THE_SAME_MSG], if val.isEmpty, and valConfirmation.isEmpty',
        () {
          List<String> errorMsgs = validateIsEqual(
            validators: Validators.passwordIsEqual,
            value: testEmptyString,
            valueConfirmation: testEmptyString,
          );
          expect(errorMsgs, [
            GENERIC_MANDATORY_FIELD_MSG,
          ]);
        },
      );
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, PASSWORDS_MUST_BE_THE_SAME_MSG], if val.isEmpty, and valConfirmation.isNotEmpty',
        () {
          List<String> errorMsgs = validateIsEqual(
            validators: Validators.passwordIsEqual,
            value: testEmptyString,
            valueConfirmation: testString,
          );
          expect(errorMsgs, [
            GENERIC_MANDATORY_FIELD_MSG,
            PASSWORDS_MUST_BE_THE_SAME_MSG,
          ]);
        },
      );
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, PASSWORDS_MUST_BE_THE_SAME_MSG], if val.isNotEmpty, and valConfirmation.isEmpty',
        () {
          List<String> errorMsgs = validateIsEqual(
            validators: Validators.passwordIsEqual,
            value: testString,
            valueConfirmation: testEmptyString,
          );
          expect(errorMsgs, [
            GENERIC_MANDATORY_FIELD_MSG,
            PASSWORDS_MUST_BE_THE_SAME_MSG,
          ]);
        },
      );
      test(
        'It should return [PASSWORDS_MUST_BE_THE_SAME_MSG], if val.isNotEmpty, valConfirmation.isNotEmpty and val != valConfirmation',
        () {
          List<String> errorMsgs = validateIsEqual(
            validators: Validators.passwordIsEqual,
            value: validPassword,
            valueConfirmation: anotherPassword,
          );
          expect(errorMsgs, [PASSWORDS_MUST_BE_THE_SAME_MSG]);
        },
      );
      test(
        'It should return [], if val.isNotEmpty, valConfirmation.isNotEmpty and val == valConfirmation',
        () {
          List<String> errorMsgs = validateIsEqual(
            validators: Validators.passwordIsEqual,
            value: validPassword,
            valueConfirmation: validPassword,
          );
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'Validators.genIsEqual',
    () {
      test(
        'It should return [GENERIC_MANDATORY_FIELD_MSG, PASSWORDS_MUST_BE_THE_SAME_MSG], if valConfirmation.isEmpty, using Validators.genIsEqual(testString)',
        () {
          List<String? Function(String)> isEqual =
              Validators.genIsEqual(testString);
          List<String> errorMsgs =
              validate(validators: isEqual, value: testEmptyString);
          expect(errorMsgs, [
            GENERIC_MANDATORY_FIELD_MSG,
            PASSWORDS_MUST_BE_THE_SAME_MSG,
          ]);
        },
      );
      test(
        'It should return [ PASSWORDS_MUST_BE_THE_SAME_MSG], if valConfirmation.isNotEmpty, but inputtedValue != testString, using Validators.genIsEqual(testString)',
        () {
          List<String? Function(String)> isEqual =
              Validators.genIsEqual(testString);
          List<String> errorMsgs =
              validate(validators: isEqual, value: validPassword);
          expect(errorMsgs, [PASSWORDS_MUST_BE_THE_SAME_MSG]);
        },
      );
      test(
        'It should return [], if valConfirmation.isNotEmpty, and inputtedValue == testString, using Validators.genIsEqual(testString)',
        () {
          List<String? Function(String)> isEqual =
              Validators.genIsEqual(testString);
          List<String> errorMsgs =
              validate(validators: isEqual, value: testString);
          expect(errorMsgs, []);
        },
      );
    },
  );
  group(
    'LengthLimittingValidator',
    () {
      test(
        'It should return [] if length is negative',
        () {
          List<Validator<String>> lengthNegativeLimiting =
              Validators.lengthLimitingValidator(-1);
          List<String> errorMsgs = validate(
            validators: lengthNegativeLimiting,
            value: testString,
          );
          expect(errorMsgs, []);
        },
      );
      test(
        'It should retun [] if val.length == length',
        () {
          List<Validator<String>> lengthLimiting4 =
              Validators.lengthLimitingValidator(4);
          List<String> errorMsgs = validate(
            validators: lengthLimiting4,
            value: testString,
          );
          expect(errorMsgs, []);
        },
      );
      test(
        "It should return '{validating} must be {length} characters long.' If length >0, val.length != length and validations != null",
        () {
          List<Validator<String>> lengthLimiting4 =
              Validators.lengthLimitingValidator(4, validating: 'Test');
          List<String> errorMsgs = validate(
            validators: lengthLimiting4,
            value: atLeast1Letter,
          );
          expect(errorMsgs, ['Test must be 4 characters long.']);
        },
      );
      test(
        "It should return 'It must be {length} characters long.' If length >0, val.length != length and validations != null",
        () {
          List<Validator<String>> lengthLimiting4 =
              Validators.lengthLimitingValidator(4);
          List<String> errorMsgs = validate(
            validators: lengthLimiting4,
            value: atLeast1Letter,
          );
          expect(errorMsgs, ['It must be 4 characters long.']);
        },
      );
    },
  );
}
