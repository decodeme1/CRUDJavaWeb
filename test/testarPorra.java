import DAO.ConnectionFactory;
import DAO.produtoDAO;
import MODEL.Produto;

public class testarPorra {
    public static void main (String [] args){
        
        produtoDAO prd = new produtoDAO();
        Produto pro = new Produto();
        
        try {
            
        System.out.println(
        prd.apresentarProdutosPorNome("Oculos"));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
