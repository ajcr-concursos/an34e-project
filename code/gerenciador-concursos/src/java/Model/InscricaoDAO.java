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
public class InscricaoDAO {
    private Connection con;
    
    public InscricaoDAO(){
        this.con = new BancoDados().getConnection();
    }
    
    public void insert(Inscricao i){
        String sql = "insert into inscricao(id_candidato,id_concurso) values (?,?)";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setInt(1, i.getCandidato().getId());
            st.setInt(2, i.getConcurso().getId());
            st.executeUpdate();
        }catch(Exception err){
            System.out.println(err.getMessage());
        }
    }
    public List<Inscricao> getInscricoes(Candidato c){
        List<Inscricao> lst = new ArrayList<>();
        String sql = "select * from inscricao i inner join concurso c on (i.id_concurso = c.id)"+
                " inner join candidato ca on (i.id_candidato = ca.id) where ca.email=?";
        try(PreparedStatement st = this.con.prepareStatement(sql)){
            st.setString(1, c.getEmail());
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Concurso conc = new Concurso();
                conc.setId(rs.getInt("c.id"));
                conc.setNome(rs.getString("c.nome"));
                conc.setQtdVagas(rs.getInt("c.qtd_vagas"));
                Calendar calendario = Calendar.getInstance();
                calendario.setTime(rs.getDate("c.data_prova"));
                conc.setDataProva(calendario);
                Inscricao insc = new Inscricao();
                insc.setConcurso(conc);
                lst.add(insc);
            }
            return lst;
        }catch(Exception err){
            System.out.println(err.getMessage());
            return null;
        }
    }
}
