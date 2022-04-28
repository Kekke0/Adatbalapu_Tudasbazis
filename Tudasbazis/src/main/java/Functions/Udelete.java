package Functions;

import DAO.Delete;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class Udelete {
    public Udelete() {
    }

    public Boolean Del(String ID) throws Exception {
        Boolean a= false;
        if (ID.contains("U")) {
            a = new Delete().FelhaszID(ID);
        } else if (ID.contains("L")){
            a = new Delete().LektorID(ID);
        }
        else{
            if (!ID.equals("A6969"))
                a = new Delete().AdminID(ID);
            else
                throw new SecurityException();
        }
        return a;
    }
}
