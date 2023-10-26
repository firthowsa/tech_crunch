 import '../../utils/resources/data_state.dart';
import '../model/requests/tech_crunch_request.dart';
import '../model/responses/tech_crunch_response.dart';

 // an abstracted class which contains one method that returns
 // a Future data of type Techcrunchrespose wrapped with the DataState to
 // determine the state of the response.
abstract class ApiRepository{
  Future<DataState<TechCrunchResponse>> getTechCrunchArticles({
    required TechCrunchRequest request,

});

 }