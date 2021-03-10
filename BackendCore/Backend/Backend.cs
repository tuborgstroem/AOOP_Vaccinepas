using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace AOOP_Vaccine_Pas.Backend{
    public class Backend{

        private DatabaseHandler dbHandler;
        private Encryptor encryptor;
        public bool checkLogin(String username, String password){

            if (username.Equals(dbHandler.getUsername()))
            {
                if (encryptor.decrypt(password).Equals(encryptor.decrypt(dbHandler.getPassword))){
                    return true;
                }
            }   
            return false;
        }
    }
}
