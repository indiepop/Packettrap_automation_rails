USING_CREDENTIAL = Transform /(.+) credential$/  do |credential_type|
 table(%{
     |UserName    | #{$info[credential_type]['username']} |
     |Password    | #{$info[credential_type]['password']} |
    })
 end