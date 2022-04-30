package Functions;

import DAO.Delete;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class Udelete {
    public Udelete() {
    }

    public Boolean Del(String ID) throws Exception {
        Boolean a= false;
        if (!ID.equals("A6969"))
            a = new Delete().Userid(ID);
        else
            throw new SecurityException();
        return a;
    }
}
