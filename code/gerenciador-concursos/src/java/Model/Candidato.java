/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author André Rodrigues
 */
public class Candidato extends Usuario{
    private String CPF;
    private Calendar dataNascimento;
 

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public Calendar getDataNascimento() {
        return dataNascimento;
    }
    
    public void setDataNascimento(Calendar dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = Calendar.getInstance();
        this.dataNascimento.setTime(dataNascimento);
    }
}
