/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import BD.BancoDados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author André Rodrigues
 */
public class InstituicaoDAO {
    private Connection con;
    
    public InstituicaoDAO(){
        this.con = new BancoDados().getConnection();
    }
    
    public void insert(Instituicao inst){
        String sql = "insert into instituicao (nome,email,senha,cnpj) values (?,?,?,?)";
        try(PreparedStatement st = con.prepareStatement(sql)){
            st.setString(1, inst.getNome());
            st.setString(2, inst.getEmail());
            st.setString(3,inst.getSenha());
            st.setString(4, inst.getCNPJ());
            st.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    public void update(Instituicao inst){
        String sql = "update instituicao set nome = ?,email = ?, senha=?,cnpj=? where email=?";
        try(PreparedStatement st = con.prepareStatement(sql)){
            st.setString(1, inst.getNome());
            st.setString(2, inst.getEmail());
            st.setString(3,inst.getSenha());
            st.setString(4, inst.getCNPJ());
            st.setString(5, inst.getEmail());
            st.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public Instituicao getInstituicao(String email, String senha){
        String sql = "select * from instituicao where email = ? and senha = ?";
        Instituicao inst = null;
        try(PreparedStatement st = con.prepareStatement(sql)){
            st.setString(1,email);
            st.setString(2,senha);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                inst = new Instituicao();
                inst.setId(rs.getInt("id"));
                inst.setNome(rs.getString("nome"));
                inst.setEmail(rs.getString("email"));
                inst.setSenha(rs.getString("senha"));
                inst.setCNPJ(rs.getString("cnpj"));
            }
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
            inst = null;
        }
        return inst;
    }
}
