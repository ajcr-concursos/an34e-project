/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Calendar;

/**
 *
 * @author andre
 */
public class Concurso {
    private int id;
    private String nome;
    private int qtdVagas;
    private Calendar dataProva;
    private Instituicao empresa;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getQtdVagas() {
        return qtdVagas;
    }

    public void setQtdVagas(int qtdVagas) {
        this.qtdVagas = qtdVagas;
    }

    public Calendar getDataProva() {
        return dataProva;
    }

    public void setDataProva(Calendar dataProva) {
        this.dataProva = dataProva;
    }

    public Instituicao getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Instituicao empresa) {
        this.empresa = empresa;
    }

    
    
}
