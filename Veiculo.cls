public class Veiculo {
    
	private String placa;
    private String marca;
    private String tipo;
    private String modelo;
    public Integer anoFabricacao;
    public Pessoa proprietarioAtual = new Pessoa();
    public Pessoa proprietarioAnterior = new Pessoa();
    public Boolean novo;
    public Decimal valorCompra;
    public Decimal valorVenda;
        
    public String getPlaca(){
        return placa;
    }
    public void setPlaca(String placa){
        if(placa.length() >= 8){
            this.placa = placa;
        }else{
            System.debug('Placa inválida.');
        }

    }
    public void setPlaca(String letras,String numeros){
       if(letras.length() == 3 && numeros.length() == 4){
           this.placa = letras + '-' + numeros;
       }
    }

    public String getMarca(){
        return marca;
    }
    public void setMarca(String marca){
        this.marca = marca;
    }

    public String getTipo() {
        return tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getModelo() {
        return modelo;
    }
    
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    
    public Veiculo(){}
    
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        this.setPlaca(placa);
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
//        	this.proprietarioAtual = 'A loja';
//            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
    
    public void exibirDadosProprietarios(){
        System.debug('Dados do propreitário atual:');
        proprietarioAtual.exibirDados();
        System.debug('Dados do proprietário anterior: ');
        proprietarioAnterior.exibirDados();
    }
}