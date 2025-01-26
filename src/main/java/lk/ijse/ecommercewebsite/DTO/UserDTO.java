package lk.ijse.ecommercewebsite;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class UserDTO {

    private String userId;
    private String name;
    private String email;
    private String password;
    private String role;
    private boolean active;

}
