
// ignore_for_file: constant_identifier_names

class Environments {
  static const String PRODUCTION = '';
  static const String DEV = '';

  static String currentEnvironments = Environments.DEV;

  static setEnvironment(String value) => currentEnvironments = value;

  static String getEnvironments() => currentEnvironments;
}

class BaseUrl {
  static String baseUrl = Environments.getEnvironments();
  
  // Auth
  static String login = "$baseUrl/auth/login";
  static String refreshToken = "$baseUrl/auth/refresh";

  static String withParameter({int? id}) 
    => "$baseUrl/partners/${id.toString()}/pks";
}