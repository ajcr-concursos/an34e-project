$("document").ready(function(){
	$("#frmCadastroInstituicao").hide();

	$("#radioCandidato").click(function(){
		$("#frmCadastroInstituicao").hide();
		$("#frmCadastroCandidato").show();
	});
	$("#radioInstituicao").click(function(){
		$("#frmCadastroInstituicao").show();
		$("#frmCadastroCandidato").hide();
	});
        $("#txtNasc").mask('00/00/0000');
        
        $("#txtCPF").mask('000.000.000-00');

        $("#txtCNPJ").mask('00.000.000/0000-00');
<<<<<<< HEAD
                
=======
        
        $("btnEnviar").click(function(){
            $.post("VaiCurintia",function(responseText){
               alert(responseText); 
            });
        });
>>>>>>> 3f5dbe620d335f66bcffab5c7289d9cb78e43f8b
});