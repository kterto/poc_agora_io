import 'dart:convert';
import 'dart:io';

fixture(String name) =>
    json.decode(File('test/fixtures$name').readAsStringSync());
