package DAO;

import java.sql.*;
import MODEL.Produto;
import java.util.ArrayList;

public class produtoDAO{
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public produtoDAO(){
    conn = new ConnectionFactory().getConnection();
}
    
    public void inserirProduto(Produto produto){
        String sql="INSERT INTO produto (nome_produto, tipo_produto, preco_produto, descricao_produto) VALUES (?, ?, ?, ?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome_produto());
            stmt.setString(2, produto.getTipo_produto());
            stmt.setDouble(3, produto.getPreco_produto());
            stmt.setString(4, produto.getDescricao_produto());
            stmt.execute();
            stmt.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro 1 " + e);
        }
    }
    
    public void alterarProduto(Produto produto){
        String sql="UPDATE produto SET nome_produto=?, tipo_produto=?, preco_produto=?, descricao_produto=? WHERE id_produto=" 
                + produto.getId_produto() ;
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome_produto());
            stmt.setString(2, produto.getTipo_produto());
            stmt.setDouble(3, produto.getPreco_produto());
            stmt.setString(4, produto.getDescricao_produto());
            stmt.execute();
            stmt.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro 2 " + e);
        }
    }
    
    public void excluirProduto(int valor){
        String sql = "delete from produto where id_produto= " + valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("erro 3 ", e);
        }
    }
    
    public ArrayList<Produto> apresentarProdutos(){
        String sql="SELECT * FROM produto";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setTipo_produto(rs.getString("tipo_produto"));
                produto.setPreco_produto(rs.getDouble("preco_produto"));
                produto.setDescricao_produto(rs.getString("descricao_produto"));
                lista.add(produto);
            }
        } catch (Exception e) {
            throw new RuntimeException("erro 4 ", e);
        }
        return lista;
    }
    
    public ArrayList<Produto> apresentarProdutosPorNome(String valor){
        String sql="SELECT * FROM produto WHERE nome_produto LIKE '%"+valor+"%' ";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setTipo_produto(rs.getString("tipo_produto"));
                produto.setPreco_produto(rs.getDouble("preco_produto"));
                produto.setDescricao_produto(rs.getString("descricao_produto"));
                lista.add(produto);
            }
        } catch (Exception e) {
            throw new RuntimeException("erro 5 ", e);
        }
        return lista;
    }
    
}
