/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Configuracoes.*;



/**
 *
 * @author Aluno
 */
public class BancoDados {
    private String USUARIO = ConfiguracaoBD.USUARIO;
    private String SENHA = ConfiguracaoBD.SENHA;
    private String URL = ConfiguracaoBD.URL;
    private String DRIVER = ConfiguracaoBD.DRIVER;
    private Connection con;
    
    public Connection abrir() throws Exception {
        Class.forName(DRIVER);
        this.con = DriverManager.getConnection(URL, USUARIO, SENHA);
        return con;
    }
    
    public void fecharConexao() {
        try {
            if(!con.isClosed()){
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(BancoDados.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ResultSet select(String sql) throws SQLException{
        Statement st = this.con.createStatement();
        return st.executeQuery(sql);
    }
    
    public int insert(String sql) throws SQLException{
        Statement st = this.con.createStatement();
        return st.executeUpdate(sql);
    }
}
