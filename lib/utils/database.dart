import 'package:union_app/utils/log.dart';

/// Helper class for accessing local database and syncing.
class Database {
  void sync() async {
    Log.writeLine("[sync] Connecting to online database...");
    Log.writeLine("[sync] Fetching data...");
    Log.writeLine("[sync] Updating local database...");
    Log.writeLine("[sync] Finished syncing!");
  }

  getNote(int id) async {

  }

  getNotes() async {

  }

  getChecklist(int id) async {
    
  }
  
  getChecklists() async {

  }
  
  getSchedule(int id) async {

  }
  
  getSchedules() async {

  }
  
  getConversation(int userId) async {

  }

  getConversations() async {

  }

  getProfileInformation() async {

  }
}