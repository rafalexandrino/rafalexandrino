#language: pt
#UTF-8

@regressao 
Funcionalidade: Acessar site ORANGEHRM para realizar manutenção de cadastro de empregados
Eu como usuário do site ORANGEHRM 
Quero realizar manutenção dos cadastros dos novos empregados 
Para incluir e atualizar as informações dos novos empregados

	@cenario1
	Cenário: Incluir novo empregado
		Dado desde que esteja logado no site ORANGEHRM
		Quando estiver na tela de Agregar Empleado
		Entao preencher todos dados obrigatórios e cadastrar um novo empregado com sucesso

	@cenario2
	Cenário: Editar empregado
		Dado desde que esteja logado no site ORANGEHRM
		Quando estiver na tela de Lista de Empleados
		Entao selecionar empregado cadastrado e editar suas informações
		E validar que o empregado foi atualizado com sucesso.