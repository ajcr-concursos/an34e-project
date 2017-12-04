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
    
    public List<Concurso> select(){
        List<Concurso> lst = new ArrayList<>();
        String sql = "select * from concurso";
        try{
            
        }catch(Exception err){
            System.out.println(err.getMessage());
        }
        return null;
    }
}
