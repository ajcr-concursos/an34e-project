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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author André Rodrigues
 */
public class CandidatoDAO {
    private Connection con;
    
    public CandidatoDAO(){
        this.con = new BancoDados().getConnection();
    }
    public void insert(Candidato c){
        String sql = "insert into candidato (nome,email,senha,cpf,data_nascimento) values (?,?,?,?,?)";
        try(PreparedStatement st = this.con.prepareStatement(sql)) {
            st.setString(1, c.getNome());
            st.setString(2, c.getEmail());
            st.setString(3, c.getSenha());
            st.setString(4, c.getCPF());
            st.setDate(5,new java.sql.Date(c.getDataNascimento().getTimeInMillis()));
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void update(Candidato c){
        String sql = "update candidato set nome=?, senha=?, cpf=?,data_nascimento = ? where email = ?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, c.getNome());
            st.setString(2, c.getSenha());
            st.setString(3, c.getCPF());
            st.setDate(4,new java.sql.Date(c.getDataNascimento().getTimeInMillis()));
            st.setString(5, c.getEmail());
            st.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    public void delete(Candidato c){
        String sql = "delete from candidato where email = ?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, c.getEmail());
            st.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    public Candidato getCandidato(String email,String senha){
        Candidato c = null;
        String sql = "select * from candidato where email = ? and senha = ?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, email);
            st.setString(2, senha);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                c =  new Candidato();
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setEmail(rs.getString("email"));
                c.setSenha(rs.getString("senha"));
                c.setCPF(rs.getString("cpf"));
                c.setDataNascimento(rs.getDate("data_nascimento"));
            }
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }finally{
            return c;
        }
    }
}
