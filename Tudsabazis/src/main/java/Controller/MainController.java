package Controller;

import DAO.SelectAll;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    private final SelectAll a = new SelectAll();

    @GetMapping("/felhsznalo")
    public String  fechfelhasznalok(){
        return new Gson().toJson(a.Felhasznall());
    }
}
