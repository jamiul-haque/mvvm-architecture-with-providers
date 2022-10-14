import 'package:mvvm_architecture_with_provider/data/response/status.dart';

class ApiResponse<D> {
  Status? status;
  D? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status:$status\n Mesage:$message\nData:$data";
  }
}
