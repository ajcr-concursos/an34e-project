/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author andre
 */
public class Concurso {

    private int id;
    private String nome;
    private int qtdVagas;
    public Calendar dataProva;
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

    public String getDataProva() {
        SimpleDateFormat format1 = new SimpleDateFormat("dd-MM-yyyy");
        String formatted = format1.format(dataProva.getTime());
        return formatted;
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
