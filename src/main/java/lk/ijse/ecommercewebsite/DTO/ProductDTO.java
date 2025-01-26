package lk.ijse.ecommercewebsite.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class ProductDTO {
    private String productId;
    private String productName;
    private double price;
    private String category;
    private String quantity;
}