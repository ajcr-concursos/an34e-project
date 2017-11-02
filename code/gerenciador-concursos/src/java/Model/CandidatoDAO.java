/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import BD.BancoDados;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    public void insert(Candidato u){
        try {
            String sql = "insert into candidato (nome,cpf,data_nascimento) values (?,?,?)";
            PreparedStatement st = this.con.prepareStatement(sql);
            st.setString(1, u.getNome());
            st.setString(2, u.getCPF());
            st.setDate(3,new java.sql.Date(u.getDataNascimento().getTimeInMillis()));
            st.executeUpdate();
            st.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

 
    
}
