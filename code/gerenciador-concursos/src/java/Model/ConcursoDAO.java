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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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
            st.setDate(3, new java.sql.Date(c.dataProva.getTimeInMillis()));
            st.setInt(4, 1);
            st.executeUpdate();
        }catch(Exception err){
            System.out.println(err.getMessage());
        }
    }
    public List<Concurso> getConcursos(Instituicao i){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso where id_empresa in (select id from empresa where email = ?) order by concurso.nome";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, i.getEmail());
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Concurso c = new Concurso();
                c.setNome(rs.getString("nome"));
                c.setQtdVagas(rs.getInt("qtd_vagas"));
                Calendar calendario = Calendar.getInstance();
                calendario.setTime(rs.getDate("data_prova"));
                c.setDataProva(calendario);
                lst.add(c);
            }
            return lst;
        }catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
    }
    
}
