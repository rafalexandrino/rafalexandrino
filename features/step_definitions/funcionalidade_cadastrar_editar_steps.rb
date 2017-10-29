
Dado("desde que esteja logado no site ORANGEHRM") do
	visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
end

Quando("estiver na tela de Agregar Empleado") do
	fill_in('txtUsername', :with => 'admin')
	fill_in('txtPassword', :with => 'admin')
	click_button('btnLogin')

	 
end

Entao("preencher todos dados obrigatórios e cadastrar um novo empregado com sucesso") do
    click_link('menu_pim_viewPimModule')
    click_link('menu_pim_addEmployee')
    fill_in('firstName', :with =>'Rafael Alexandrino')
    fill_in('lastName', :with =>'Souza')
    click_button('btnSave')


end

Quando("estiver na tela de Lista de Empleados") do
    fill_in('txtUsername', :with => 'admin')
    fill_in('txtPassword', :with => 'admin')
    click_button('btnLogin')
    

end

Entao("selecionar empregado cadastrado e editar suas informações") do
	click_link('menu_pim_viewPimModule')
    click_link('menu_pim_viewEmployeeList')
  
    click_button('searchBtn')
    click_link('Rafael Alexandrino')
    click_button('btnSave')
    fill_in('personal[txtEmpFirstName]', :with => 'Rafa Souza')
    fill_in('personal[txtEmpLastName]', :with => 'Inmetrics')
    click_button('btnSave')
  
end

Entao("validar que o empregado foi atualizado com sucesso.") do
    assert_text('Successfully Saved ')  
end