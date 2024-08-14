class NetworkConstants {
  static const connectionDuration = Duration(milliseconds: 30000);
  static const receiveTimeout = Duration(milliseconds: 30000);

  static const apiBaseUrl = 'https://api.mirel.uz';
  static const devApiBaseUrl = 'https://api.mirel.uz';

  static const apiVersion = 'v1';
  static const clients = 'clients';
  static const apiUrl = '$apiBaseUrl/$apiVersion/$clients';

  static const pageNumber = 'page=num';
  static const pageSize = 'pageSize=num';
}
