Telefone igortelefone = new Telefone('55','31','996651842');
String telefoneFormatado = igortelefone.exibirTelefone();
System.debug(telefoneFormatado);

Endereco igorendereco = new Endereco('Rua', 'Migalhas', '123', 'Apto 13', '01234-567', 'São Paulo', 'SP');
System.debug(igorendereco.exibirEndereco());

//

Endereco enderecoteste = new Endereco('Rua dos Testes', '123', 'Bloco A', 'Apt. 101', '12345-678', 'São Paulo', 'SP');

Telefone telefoneteste = new Telefone('+55', '11', '98765-4321');

Funcionario funcionarioteste = new Funcionario('João da Silva', 123456789, '987.654.321-00', 1234, 'joao.silva@email.com', enderecoteste, telefoneteste, 0.1);

System.debug('Nome: ' + funcionarioteste.getNome());
System.debug('RG: ' + funcionarioteste.getRg());
System.debug('CPF: ' + funcionarioteste.getCpf());
System.debug('Matrícula: ' + funcionarioteste.getMatricula());
System.debug('E-mail: ' + funcionarioteste.getEmail());
System.debug('Comissão: ' + funcionarioteste.getComissao());

System.debug('Endereço: ' + funcionarioteste.getEndereco().exibirEndereco());

System.debug('Telefone: ' + funcionarioteste.getTelefone().exibirTelefone());