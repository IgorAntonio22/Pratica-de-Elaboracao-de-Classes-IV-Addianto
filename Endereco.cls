public class Endereco {
    private String logradouro;
    private String nome;
    private String numero;
    private String complemento;
    private String cep;
    private String cidade;
    private String estado;

    public Endereco(String logradouro, String nome, String numero, String complemento, String cep, String cidade, String estado) {
        this.logradouro = logradouro;
        this.nome = nome;
        this.numero = numero;
        this.complemento = complemento;
        this.cep = cep;
        this.cidade = cidade;
        this.estado = estado;
    }
    
    public Endereco() {
        
    }

    public String exibirEndereco() {
        return this.logradouro + ' ' + this.nome + ', ' + this.numero + ' ' + this.complemento + ' - ' + this.cep + ' - ' + this.cidade + ' - ' + this.estado;
    }
    
    public String getLogradouro() {
        return this.logradouro;
    }
    
    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    
    public String getComplemento() {
        return this.complemento;
    }
    
    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }
    
    public String getCep() {
        return this.cep;
    }
    
    public void setCep(String cep) {
        this.cep = cep;
    }
    
    public String getCidade() {
        return this.cidade;
    }
    
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
}