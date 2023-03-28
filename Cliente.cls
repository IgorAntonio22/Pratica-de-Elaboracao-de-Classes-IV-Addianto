public class Cliente {
    private String nome;
    private String rg;
    private String cpf;
    private String telefone;
    private String email;
    private String endereco;
    
    {
        nome = 'Sem nome';
        cpf = '000.000.000-00';
        telefone = '(00) 9 0000-0000';
    }
    
    public Cliente(String nome, String email, String telefone) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
    }
    
    public Cliente(String telefone) {
        this('Conhecido', 'conhecido@gmail.com', telefone);
    }
    
    public Cliente() {
    }
  
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
      
      public String getTelefone() {
          return telefone;
      }
      public void setTelefone(String telefone) {
          this.telefone = telefone;
      }
      
      public String getEmail() {
          return email;
      }
      public void setEmail(String email) {
          this.email = email;
      }
      
      public String getEndereco() {
          return endereco;
      }
      public void setEndereco(String endereco) {
          this.endereco = endereco;
      }
    
  
  }