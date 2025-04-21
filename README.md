# carfix_app

build runner:
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs

Error handling:
main exception is ExceptionEntity, which can be a common exception from backend, but also can be manually
handled exception like UserNotFound exception, which is needed to redirect user to different screen
or to show custom error