package Ch07;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CartRepository {
    //KEY : UserID VALUE : 상품정보
    public Map<String,ArrayList<ProductDTO>> cart = new HashMap();

}
