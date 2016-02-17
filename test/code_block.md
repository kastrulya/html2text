``` java

//login user  
Backendless.UserService.login( "username@foo.com", "secretpassword", new
AsyncCallback<BackendlessUser>()  
{  
@Override  
public void handleResponse( BackendlessUser backendlessUser )  
 {  
  // user has been logged in. Get user roles.  
  Backendless.UserService.getUserRoles( new AsyncCallback<List<String>>()  
  {  
    @Override   
    public void handleResponse( List<String> userRoles )   
    {   
        //here we get all user roles - "userRoles".   
    }   
  
    @Override   
    public void handleFault( BackendlessFault backendlessFault )   
    {   
        // get user roles, to get the error code call backendlessFault.getCode()   
    }   
  } );  
}  
  
@Override  
public void handleFault( BackendlessFault backendlessFault )  
{  
  // login failed, to get the error code call backendlessFault.getCode()  
}  
} );

```

