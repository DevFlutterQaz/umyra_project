class TimeEvent {}

class HomeData extends TimeEvent {}

class TasbihData extends TimeEvent {}

class NavigationData extends TimeEvent {}

class EventData extends TimeEvent {}

// [Guids]
class GetGuids extends TimeEvent {}

// [Guids Detail]
class GetGuidsDetail extends TimeEvent {
  final String id;

  GetGuidsDetail({required this.id});
}
