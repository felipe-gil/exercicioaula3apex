public class Concessionaria {
    public List<Funcionario> funcionarios = new List<Funcionario>();
    public List<Veiculo> veiculos = new List<Veiculo>();
        
    public void novoFuncionario(String nome, Integer matricula, String cpf){
        Funcionario func = new Funcionario(nome, matricula, cpf);
        funcionarios.add(func);
    } 
    public void novoVeiculo(String placa, String marca, String modelo){
        Veiculo veic = new Veiculo(placa, marca, modelo);
        veiculos.add(veic);
    } 
    public void exibirFuncionarios(){
        for(Funcionario func : funcionarios){
            func.exibirDadosFuncionarios();
        }
    }
        }