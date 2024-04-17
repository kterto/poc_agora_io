enum StorageKey {
  userEmail(keyName: 'user_email'),
  userPassword(keyName: 'user_passord'),
  deviceId(keyName: 'device'),
  authToken(keyName: 'auth_token'),
  authenticationMethod(keyName: 'authentication_method'),
  ;

  const StorageKey({required this.keyName});

  final String keyName;
}
