//this is the class from which all state events are inherited
abstract class EazyTutorEvent {}

//this event is used for user login
class LoginEvent extends EazyTutorEvent {}

//this event is used for user logout
class LogoutEvent extends EazyTutorEvent {}
