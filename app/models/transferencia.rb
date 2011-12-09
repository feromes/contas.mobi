
class Transferencia
  # Toda operação entre contas é na verdade uma transferência.
  # Um saque, um pagamento de conta, um recebimento de salário em dinheiro, tudo isso é uma TRansferência, portanto a melhor forma encontrada é criar uma classe para tratar Transferencias.

  attr_accessor :valor, :conta_de_destino, :data_da_trasnferencia, :conta_de_origem
  
  def initialize(valor, conta_de_destino, data_da_transferencia, conta_de_origem)
    self.valor, self.conta_de_destino, self.data_da_trasnferencia, self.conta_de_origem = valor, conta_de_destino, data_da_trasnferencia, conta_de_origem
  end
end