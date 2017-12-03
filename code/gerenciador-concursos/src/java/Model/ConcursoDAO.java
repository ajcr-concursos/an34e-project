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
            st.setInt(4,c.getEmpresa().getId());
            st.executeUpdate();
        }catch(Exception err){
            System.out.println(err.getMessage());
        }    
    }
    public void insertAreaConcurso(String c, String a){
        String sql = "insert into area (id_area, id_concurso)values(?,?)";
        String ids = selectIdAreaConcurso(c, a);
         try(PreparedStatement st = this.con.prepareStatement(sql)){
             st.setInt(1,Integer.parseInt(ids.charAt(0)+""));
             st.setInt(2, Integer.parseInt(ids.charAt(1)+""));
         }
         catch(Exception err){
             System.out.println(err.getMessage());
         }
    }
    //retorna o id de concurso passando o nome do concurso e retorna o id da area passando o nome 
    //como parametro.
    public String selectIdAreaConcurso(String concurso, String area){
        ResultSet rs;
        String ids = "";
        String sql = "select id from concurso where nome = ? ";
         try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, concurso);
             rs = st.executeQuery();
             ids += rs.getString("id");
        }
        catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
        sql = "select id from area where nome = ? ";
         try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, area);
             rs = st.executeQuery();
             ids += rs.getString("id");
             System.out.println("teste id area id concurso " + ids);
             return ids;
        }
        catch(Exception err){
            System.out.println(err.getMessage());
            return null;
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
    public List<Concurso> getConcursos(String area){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso where nome = ?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, area);
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
        }
        catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
    }
}
