
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
        System.out.println("insert\n");
        System.out.println("area "+ a + "\n concurso " + c);
        String sql = "insert into area_concurso (id_area, id_concurso)values(?,?)";
        int idArea = selectIdArea(a);
        int idConcurso = selectIdConcurso(c);
        System.out.println("ids da area" +idArea+" e concurso" + idConcurso);
         try(PreparedStatement st = this.con.prepareStatement(sql)){
             st.setInt(1,idArea);
             st.setInt(2,idConcurso);
             st.executeUpdate();
         }
         catch(Exception err){
             System.out.println(err.getMessage());
         }
    }
    //retorna o id de concurso passando o nome do concurso e retorna o id da area passando o nome 
    //como parametro.
    public int selectIdConcurso(String concurso){
        ResultSet rs;
        int id = -1;
        String sql = "select id from concurso where nome = ? ";
         try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, concurso);
             rs = st.executeQuery();
             while(rs.next()){
                id = rs.getInt("id");
             }
             return id;
        }
        catch(Exception err){
            System.out.println(err.getMessage());
            return id;
        }
    }
    
    public int selectIdArea(String area){
        String sql = "select id from area where nome = ? ";
        ResultSet rs;
        int id =-1;
         try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, area);
             rs = st.executeQuery();
             while(rs.next()){
                id = rs.getInt("id");
             }
             System.out.println("teste id area id concurso " + id);
             return id;
        }
        catch(Exception err){
            System.out.println(err.getMessage());
            System.out.println("deu erro no select do id area");
            return id;
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
        String sql = "select * from concurso, area, area_concurso where area.id = area_concurso.id_area and concurso.id = area_concurso.id_concurso and area.nome like ?";
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
    public List<Concurso> getConcursosCandidato(Candidato candidato) {
         List<Concurso> lst = new ArrayList<>();
         String sql = "select * from concurso join inscricao on concurso.id = id_concurso join candidato on id_candidato = candidato.id where candidato.email = ? order by concurso.nome";
         try (PreparedStatement st = this.con.prepareStatement(sql)) {
             st.setString(1, candidato.getEmail());
             ResultSet rs = st.executeQuery();
             while (rs.next()) {
                 Concurso c = new Concurso();
                 c.setNome(rs.getString("nome"));
                 c.setQtdVagas(rs.getInt("qtd_vagas"));
                 Calendar calendario = Calendar.getInstance();
                 calendario.setTime(rs.getDate("data_prova"));
                 c.setDataProva(calendario);
                 lst.add(c);
             }
             return lst;
         } catch (Exception err) {
             System.out.println(err.getMessage());
             return null;
         }
     }
    
}



