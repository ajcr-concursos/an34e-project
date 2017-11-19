package Controller;


import java.util.Date;
import java.util.InputMismatchException;
import java.util.Calendar;
import java.util.Scanner;

/**
 *
 * @author Jean
 */
public class Util {
    //metodo utilizado para remover a formatação do cpf para facilitar a validação e armazenar no banco
    public static String desformCPF(String cpf){
        if(cpf.length()!=14){
            return cpf;
        }
        //substring utilizado para retirar os pontos da formatação do cpf
        String form = "";
        form += cpf.substring(0, 3);
        form += cpf.substring(4,7);
        form += cpf.substring(8,11);
        form += cpf.substring(12);
        return form;
    }
    
    //metodo utilizado para retirar a formatação do CNPJ para facilitar validação e armazenar no banco 
    public static String desformCNPJ(String cnpj){
        if(cnpj.length()!=18){
            return cnpj;
        }
        String form ="";
        form += cnpj.substring(0,2);
        form += cnpj.substring(3,6);
        form += cnpj.substring(7,10);
        form += cnpj.substring(11,15);
        form += cnpj.substring(16);
        return form;
    }
    //recebe uma stringo por parametro e retorna uma variavel do tipo date convertido com o mesm o valor da string
    public static Calendar ValidaDataNascimento(String data) {
        String form[] = data.split("/");
        Calendar c = Calendar.getInstance();
        c.set(Integer.parseInt(form[2]), Integer.parseInt(form[1]), Integer.parseInt(form[0]));
        return c;
    }

    //valida o cpf e retorna verdadeiro se for valido.
    public static boolean isCPF(String CPF) {

        if ((CPF.length() != 11)
                || CPF.equals("00000000000") || CPF.equals("11111111111")
                || CPF.equals("22222222222") || CPF.equals("33333333333")
                || CPF.equals("44444444444") || CPF.equals("55555555555")
                || CPF.equals("66666666666") || CPF.equals("77777777777")
                || CPF.equals("88888888888") || CPF.equals("99999999999")) {
            return (false);
        }

        char dig10, dig11;
        int sm, i, r, num, peso;
        try {

            sm = 0;
            peso = 10;
            for (i = 0; i < 9; i++) {
                num = (int) (CPF.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso - 1;
            }

            r = 11 - (sm % 11);
            if ((r == 10) || (r == 11)) {
                dig10 = '0';
            } else {
                dig10 = (char) (r + 48);
            }
            sm = 0;
            peso = 11;
            for (i = 0; i < 10; i++) {
                num = (int) (CPF.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso - 1;
            }

            r = 11 - (sm % 11);
            if ((r == 10) || (r == 11)) {
                dig11 = '0';
            } else {
                dig11 = (char) (r + 48);
            }

            if ((dig10 == CPF.charAt(9)) && (dig11 == CPF.charAt(10))) {
                return (true);
            } else {
                return (false);
            }
        } catch (InputMismatchException erro) {
            return (false);
        }
    }

    //valida o cnpj e retorna verdadeiro se for valido
    public static boolean isCNPJ(String CNPJ) {

        if ((CNPJ.length() != 14)
                || CNPJ.equals("00000000000000") || CNPJ.equals("11111111111111")
                || CNPJ.equals("22222222222222") || CNPJ.equals("33333333333333")
                || CNPJ.equals("44444444444444") || CNPJ.equals("55555555555555")
                || CNPJ.equals("66666666666666") || CNPJ.equals("77777777777777")
                || CNPJ.equals("88888888888888") || CNPJ.equals("99999999999999")) {
            return (false);
        }

        char dig13, dig14;
        int sm, i, r, num, peso;


        try {

            sm = 0;
            peso = 2;
            for (i = 11; i >= 0; i--) {

                num = (int) (CNPJ.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso + 1;
                if (peso == 10) {
                    peso = 2;
                }
            }

            r = sm % 11;
            if ((r == 0) || (r == 1)) {
                dig13 = '0';
            } else {
                dig13 = (char) ((11 - r) + 48);
            }
            sm = 0;
            peso = 2;
            for (i = 12; i >= 0; i--) {
                num = (int) (CNPJ.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso + 1;
                if (peso == 10) {
                    peso = 2;
                }
            }
            r = sm % 11;
            if ((r == 0) || (r == 1)) {
                dig14 = '0';
            } else {
                dig14 = (char) ((11 - r) + 48);
            }
            if ((dig13 == CNPJ.charAt(12)) && (dig14 == CNPJ.charAt(13))) {
                return (true);
            } else {
                return (false);
            }
        } catch (InputMismatchException erro) {
            return (false);
        }
  }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
     
}
