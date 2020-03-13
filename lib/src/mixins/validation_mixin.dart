class ValidationMixin {

  String validateEmail (String value){
          return !value.contains('@') ? 'Enter a valid Email' : null;
      
      }


  String validatePassword (String value){
        return value.length<4 ? 'Enter a correct Password' : null;
      }
}