import 'package:estudo_app/src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source_interface.dart';
import 'package:estudo_app/src/domain/utils/app_storage_client/app_storage_client_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetFingerprintIsActiveDataSource)
class GetFingerprintIsActiveDataSource implements IGetFingerprintIsActiveDataSource {
  GetFingerprintIsActiveDataSource(this._appStorageClient);

  final IAppStorageClient _appStorageClient;

  @override
  bool call() {
    final fingerprintIsActive = _appStorageClient.getBool('fingerprintIsActive');
    return fingerprintIsActive != null && fingerprintIsActive;
  }
}
