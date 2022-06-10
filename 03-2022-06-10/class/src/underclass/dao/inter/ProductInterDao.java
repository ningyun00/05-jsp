package underclass.dao.inter;

import underclass.entity.Product;

import java.util.List;

public interface ProductInterDao {
    int add(Product product);

    List<Product> selectAll();

    int delete(int ID);
}
