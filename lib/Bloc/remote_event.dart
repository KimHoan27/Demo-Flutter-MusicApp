abstract class RemoteEvent{}

class IncrementEvent extends RemoteEvent{
  final int increment;
  IncrementEvent(this.increment);
}

class DecrementEvent extends RemoteEvent{
  final int decrement;
  DecrementEvent(this.decrement);
}

class MuteEvent extends RemoteEvent{}
