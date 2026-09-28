sealed class ResultApi<T> {}

class Success<T> extends ResultApi<T> {
  T data;
  Success(this.data);
}

class Error<T> extends ResultApi<T> 
{
  String error;
  Error(this.error);
}