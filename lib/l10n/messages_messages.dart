// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "auto" : MessageLookupByLibrary.simpleMessage("Auto"),
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "home" : MessageLookupByLibrary.simpleMessage("Github Client"),
    "language" : MessageLookupByLibrary.simpleMessage("Language"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "loginWaiting" : MessageLookupByLibrary.simpleMessage("Login..."),
    "logout" : MessageLookupByLibrary.simpleMessage("Logout"),
    "logoutTip" : MessageLookupByLibrary.simpleMessage("Are you sure logout ?"),
    "noDescription" : MessageLookupByLibrary.simpleMessage("No description"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "passwordRequired" : MessageLookupByLibrary.simpleMessage("Password can\'t be empty"),
    "theme" : MessageLookupByLibrary.simpleMessage("Theme"),
    "title" : MessageLookupByLibrary.simpleMessage("Github Client"),
    "userName" : MessageLookupByLibrary.simpleMessage("User name"),
    "userNameOrEmail" : MessageLookupByLibrary.simpleMessage("User name or email"),
    "userNameOrPasswordWrong" : MessageLookupByLibrary.simpleMessage("User name or password wrong"),
    "userNameRequired" : MessageLookupByLibrary.simpleMessage("User name can\'t be empty"),
    "yes" : MessageLookupByLibrary.simpleMessage("Yes")
  };
}
