<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import BD.BancoDados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.sql.ResultSet;

/**
 *
 * @author Jean
 */
public class BuscarConcursoDAO {
    private Connection con;
    public BuscarConcursoDAO(){
        con = new BancoDados().getConnection();
    }
    
    public List<Concurso> select(){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso";
        
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Concurso conc = new Concurso();
                conc.setId(rs.getInt("c.id"));
                conc.setNome(rs.getString("c.nome"));
                conc.setQtdVagas(rs.getInt("c.qtd_vagas"));
                Calendar calendario = Calendar.getInstance();
                calendario.setTime(rs.getDate("c.data_prova"));
                conc.setDataProva(calendario);
                lst.add(conc);;
               
            }
            return lst;
        }catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
    }
    
        public List<Concurso> select(String area){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso join area  ubsing(id) where area.nome = ?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, area);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Concurso conc = new Concurso();
                conc.setId(rs.getInt("c.id"));
                conc.setNome(rs.getString("c.nome"));
                conc.setQtdVagas(rs.getInt("c.qtd_vagas"));
                Calendar calendario = Calendar.getInstance();
                calendario.setTime(rs.getDate("c.data_prova"));
                conc.setDataProva(calendario);
                lst.add(conc);;
               
            }
            return lst;
        }catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
    }
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import BD.BancoDados;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jean
 */
public class BuscarConcursoDAO {
    private Connection con;
    public BuscarConcursoDAO(){
        con = new BancoDados().getConnection();
    }
    /*
    public List<Concurso> select(){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso";
        try{
            
        }catch(Exception err){
            System.out.println(err.getMessage());
        }
        return null;
    }
*/
}
>>>>>>> d42c10b653821791f4bbf008f91e4c4bde62d47c
