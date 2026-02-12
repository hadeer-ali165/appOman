import 'package:oman_promo/common/enums/data_source_enum.dart';
import 'package:oman_promo/data/model/api_response.dart';
import 'package:oman_promo/interface/repo_interface.dart';

abstract class DataSyncRepoInterface extends RepositoryInterface {
  Future<ApiResponseModel<T>> fetchData<T>(String uri, DataSourceEnum source);
}