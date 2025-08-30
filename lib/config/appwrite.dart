import 'package:appwrite/appwrite.dart';

class AppwriteConfig {
  static const String appwriteProjectId = '68b2ecce0026a386da70';

  static const String appwriteProjectName = 'Vet Track';

  static const String endpoint = "https://nyc.cloud.appwrite.io/v1";

  static const String userTable = "68b2f027002fc8307d24";

  static const String databaseId = "68b2ef5f0010ae071a88";

  static final Client _client = Client(
    endPoint: endpoint,
  ).setProject(appwriteProjectId);

  Client get client => _client;

  static final tablesDB = TablesDB(_client);

  static Account account = Account(_client);

  static final Databases databases = Databases(_client);
}
