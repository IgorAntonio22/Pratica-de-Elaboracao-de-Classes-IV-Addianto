public class Pessoa {
	private String nome;
    private String rg;
    private String cpf;
    private String endereco;
    private String telefone;
    
     
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }
    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public void exibirDados(){
        System.debug('Nome: ' + nome);
        System.debug('Rg: ' + rg);
        System.debug('CPF: ' + cpf);
        System.debug('Endereco: ' + endereco);
        System.debug('Telefone: ' + telefone);
    }
}