package lk.ijse.ecomerce.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryDTO {
    private int category_id;
    private String name;
    private String description;

    public CategoryDTO(String name, String description) {
        this.name = name;
        this.description = description;
    }
}
