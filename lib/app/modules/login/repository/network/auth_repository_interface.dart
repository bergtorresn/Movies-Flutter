abstract class IAuthRepositoryInterface {

  Future getUser();
  Future doLoginWithGoogle();
  Future doLoginWithFacebook();
  Future doLoginWithEmailAndPassword();
  Future<String> getToken();

}