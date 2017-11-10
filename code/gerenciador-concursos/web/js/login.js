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
});