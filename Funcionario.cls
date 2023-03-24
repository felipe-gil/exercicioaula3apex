public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    public Decimal comissao;
    public Decimal bonus;
    
    {
        nome = 'Digite seu nome';
        matricula = 0;
        email = 'Digite seu email';
    }
    public Funcionario(){}
    public Funcionario(String nome, Integer matricula, String cpf){
        this.nome = nome;
        this.matricula = matricula;
        this.cpf = cpf;
    }
    // Método que utiliza objetos como argumentos = MENSAGEM
   		public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.placa + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        veiculo.desvalorizacao();
        comissao(veiculo);
        System.debug('Valor da venda: ' + veiculo.valorVenda);
            
        }
    		public void comissao(Veiculo veiculo){
                if(veiculo.tipo.equals('carro')){
                  comissao = veiculo.valorVenda * 0.15;  
                }else{
                    comissao = veiculo.valorVenda * 0.10;
                }
        System.debug('Valor da comissão é: ' + comissao);
    }  
    public void exibirDadosFuncionarios(){
        System.debug('Nome do Funcionário: '  + nome);
        System.debug('Matrícula do Funcionário: '  + matricula);
        System.debug('CPF do Funcionário: '  + cpf);
		System.debug('------------------');
    }
    		               		
}