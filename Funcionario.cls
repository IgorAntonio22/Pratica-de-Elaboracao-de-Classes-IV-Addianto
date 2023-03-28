public class Funcionario {
    private String nome;
    private Integer rg;
    private String cpf;
    private Integer matricula;
    private String email;
  	private Endereco endereco;
    private Telefone telefone;
    private Decimal comissao;
    
    {
        email = 'mail@mail.com.br';
        cpf = '000.000.000-00';
        nome = 'Sem nome';
    }
    
	public Funcionario(String nome, Integer rg, String cpf, Integer matricula, String email, Endereco endereco, Telefone telefone, Decimal comissao) {
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.matricula = matricula;
        this.email = email;
        this.endereco = endereco;
        this.telefone = telefone;
        this.comissao = comissao;
    }

    public Funcionario() {
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getRg() {
        return rg;
    }
    public void setRg(Integer rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Integer getMatricula() {
        return matricula;
    }
    public void setMatricula(Integer matricula) {
        this.matricula = matricula;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public Telefone getTelefone() {
        return telefone;
    }
    public void setTelefone(Telefone telefone) {
        this.telefone = telefone;
    }

    public Endereco getEndereco() {
        return endereco;
    }
    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public Decimal getComissao() {
        return comissao;
    }
    public void setComissao(Decimal comissao) {
        this.comissao = comissao;
    }
    
    
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente) {
        
        if(veiculo.getTipo() == 'carro') {
            this.comissao = veiculo.valorVenda * 0.15;
        } else {
            this.comissao = veiculo.valorVenda * 0.10;
        }
        
        if(veiculo.novo == true) {
            this.comissao += 300;
        } else {
            this.comissao += 200;
        }
               
        System.debug('Veículo de placa ' + veiculo.getPlaca() + ' foi vendido pelo funcionario(a): ' + this.nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.getNome());
        System.debug('Endereço: ' + cliente.getEndereco());
        System.debug('Telefone: ' + cliente.getTelefone());
        veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        System.debug('Valor de comissão do funcionário: ' + this.comissao.setScale(2));
    }
    
}