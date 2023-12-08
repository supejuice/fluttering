abstract class Result<T> {
  void onSuccess(Function(T) block) {
    if (this is Success) {
      block((this as Success).value);
    }
  }

  T get() {
    if (this is Success) {
      return (this as Success).value;
    }
    throw Exception("No value");
  }
}

class Success<T> extends Result<T> {
  Success(this.value);

  final T value;
}

class Failure<T> extends Result<T> {
  Failure(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

Result<T> runCatching<T>(T Function() block) {
  try {
    return Success(block());
  } catch (error, stackTrace) {
    return Failure(error, stackTrace);
  }
}
