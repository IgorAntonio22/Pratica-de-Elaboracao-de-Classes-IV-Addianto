public class Telefone {
	private String codigoDoPais;
    private String ddd;
    private String numeroDeTelefone;
   

    public Telefone(String codigoDoPais, String ddd, String numero) {
        this.codigoDoPais = codigoDoPais;
        this.ddd = ddd;
        this.numeroDeTelefone = numero;
    }
    
    public Telefone() {
        
    }

    public String exibirTelefone() {
        return '+' + this.codigoDoPais + '(' + this.ddd + ')' + this.numeroDeTelefone.substring(0, 5) + '-' + this.numeroDeTelefone.substring(5);
    }
    
    public String getCodigoDoPais() {
        return this.codigoDoPais;
    }
    
    public void setCodigoDoPais(String codigoDoPais) {
        this.codigoDoPais = codigoDoPais;
    }
    
    public String getDdd() {
        return this.ddd;
    }
    
    public void setDdd(String ddd) {
        this.ddd = ddd;
    }
    
    public String getNumero() {
        return this.numeroDeTelefone;
    }
    
    public void setNumero(String numero) {
        this.numeroDeTelefone = numero;
    }
    
}