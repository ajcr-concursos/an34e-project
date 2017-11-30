/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import BD.BancoDados;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author andre
 */
public class ConcursoDAO {
    
    private Connection con;
    
    public ConcursoDAO(){
        con = new BancoDados().getConnection();
    }
    public void insert(Concurso c){
        String sql = "insert into concurso (nome,qtd_vagas,data_prova,id_empresa) values (?,?,?,?)";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, c.getNome());
            st.setInt(2, c.getQtdVagas());
            st.setDate(3, new java.sql.Date(c.getDataProva().getTimeInMillis()));
            st.setInt(4, 1);
            st.executeUpdate();
        }catch(Exception err){
            System.out.println(err.getMessage());
        }
    }
}
