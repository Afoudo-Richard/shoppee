################### generate icon ######################

command : flutter pub run flutter_launcher_icons


################### localizaton #######################

Note: configure the localizaton in flutter before running the command
Link: https://docs.flutter.dev/development/accessibility-and-localization/internationalization

note: add (generate: true) under flutter section in your pubspec.yaml file
command : flutter gen-l10n

################### rename #########################

install the rename package globally and run the command.

command : rename [options]

################## firebsae configuration ################

install the flutter firebase cli and continue

command : flutterfire configure --project=carzoum