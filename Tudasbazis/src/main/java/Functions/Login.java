package Functions;

import DAO.Find;
import UserBased.Felhasznalo;

import javax.security.auth.login.AccountNotFoundException;
import java.sql.SQLException;

public class Login {
    String Email,Pass;

    public Login(String email, String pass) {
        Email = email;
        Pass = pass;

    }

    public Felhasznalo Logging()throws Exception{
        Felhasznalo talalt;
        try {
            talalt=new Find().FelhaszEmail(Email);
        } catch (SQLException e1){
            try {
                talalt = new Find().LektorEmail(Email);
            }catch (SQLException e2){
                try {
                    talalt = new Find().AdminEmail(Email);
                }catch (SQLException e3){
                    throw new AccountNotFoundException();
                }
            }
        }

        if (talalt!= null &&!talalt.getJelszo().equals(Pass))
            throw new AccountNotFoundException();
        return talalt;
    }


}
