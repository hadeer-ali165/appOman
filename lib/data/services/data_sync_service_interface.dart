import 'package:oman_promo/common/enums/data_source_enum.dart';
import 'package:oman_promo/data/model/api_response.dart';

abstract class DataSyncServiceInterface {
  Future<ApiResponseModel<T>> fetchData<T>(String uri, DataSourceEnum source);
}