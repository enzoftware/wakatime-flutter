class User {
  final String createdAt;
  final String displayName;
  final String email;
  final bool emailPublic;
  final String fullName;
  final bool hasPremiumFeatures;
  final String humanReadableWebsite;
  final bool isEmailConfirmed;
  final bool isHireable;
  final bool languagesUsedPublic;
  final String lastHeartbeat;
  final String lastPlugin;
  final String lastPluginName;
  final String lastProject;
  final String location;
  final bool loggedTimePublic;
  final String modifiedAt;
  final bool needsPaymentMethod;
  final String photo;
  final bool photoPublic;
  final String plan;
  final String timezone;
  final String username;
  final String website;
  final String id;

  User.fromJson(Map<String, dynamic> jsonMap):
        id =  valueOrDefaultValue(jsonMap['id']),
        website =  valueOrDefaultValue(jsonMap['website']),
        username =  valueOrDefaultValue(jsonMap['username']),
        timezone =  valueOrDefaultValue(jsonMap['timezone']),
        plan =  valueOrDefaultValue(jsonMap['plan']),
        photoPublic =  jsonMap['photo_public'],
        photo =  valueOrDefaultValue(jsonMap['photo']),
        needsPaymentMethod =  jsonMap['needs_payment_method'],
        modifiedAt =  valueOrDefaultValue(jsonMap['modified_at']),
        loggedTimePublic =  jsonMap['logged_time_public'],
        location =  valueOrDefaultValue(jsonMap['location']),
        lastProject =  valueOrDefaultValue(jsonMap['last_project']),
        lastPluginName = valueOrDefaultValue(jsonMap['last_plugin_name']),
        lastPlugin = valueOrDefaultValue(jsonMap['last_plugin']),
        lastHeartbeat = valueOrDefaultValue(jsonMap['last_heartbeat']),
        languagesUsedPublic = jsonMap['languages_used_public'],
        isHireable = jsonMap['is_hireable'],
        isEmailConfirmed = jsonMap['is_email_confirmed'],
        humanReadableWebsite = valueOrDefaultValue(jsonMap['human_readable_website']),
        hasPremiumFeatures =  jsonMap['has_premium_features'],
        fullName =  valueOrDefaultValue(jsonMap['full_name']),
        emailPublic =  jsonMap['email_public'],
        email =  valueOrDefaultValue(jsonMap['email']),
        displayName =  valueOrDefaultValue(jsonMap['display_name']),
        createdAt =  valueOrDefaultValue(jsonMap['createdAt']) {
    assert(id != null);
  }
}

String valueOrDefaultValue(String value) {
  return (value == null || value.isEmpty) ? "-" : value;
}