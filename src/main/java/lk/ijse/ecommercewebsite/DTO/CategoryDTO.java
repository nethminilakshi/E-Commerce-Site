package lk.ijse.ecommercewebsite;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryDTO {
    private String categoryId;
    private String categoryName;
    private String description;

    public CategoryDTO(String name, String description) {
        this.categoryName = name;
        this.description = description;
    }
}
