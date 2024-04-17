# SETUP ENVIRONMENT USING DART DEFINE FROM FILE

Status: proposed by Rodrigo
Deciders: Kainã
Date: 2023-10-04
Supersedes [ADR-0018](./0018-setup-env-with-dart-define.md)

## Context and Problem Statement

Flutter use **Dart Define** option in the **flutter run** or **flutter build** commands as a way to
set environment variables in compilation time. It allows flutter to use **String.getFromEnvironment()**
function to get environment variables.
Since Flutter 3.7 The **Dart Define From File** option was added to easily handle multiple definitions.

This ADR proposes to use **Dart Define From File** and Make commands to define environment variables in .json files
and pass those variables to the **run** and *build* commands through the Make command.

Dart Define From File option is not described in the Flutter documentation but you can find some clue running:
*flutter run --help*
*flutter build apk --help*
*flutter build ipa --help*
Help description:
``
The path of a json format file where flutter define a global constant pool.
Json entry will be available as constants from the String.fromEnvironment,
bool.fromEnvironment, int.fromEnvironment, and double.fromEnvironment
constructors; the key and field are json values.
Multiple defines can be passed by repeating "--dart-define-from-file"
multiple times.
``

## Considered Options

* Dart Define with .env files and shell script to unpack variables
* Dart Define From File with json files

## Additional references
* https://itnext.io/flutter-3-7-and-a-new-way-of-defining-compile-time-variables-f63db8a4f6e2

## Decision Outcome


### Positive Consequences

* Runs on windows
* The make commands are less complex since we don't need to unpack the values in the .env files

### Negative Consequences

* None
