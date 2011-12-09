class Conta < ActiveRecord::Base
  belongs_to :usuario 
  has_many :razoes, :class_name => "Razao", :foreign_key => "conta_id"
  validates_presence_of :nome
  
  def saldo
    razoes.sum(:valor) + saldo_inicial
  end
  
  def novo_lancamento(valor)
    sinal = debito == true ? -1.0 : 1.0 
    razoes.create(valor: (valor * sinal))
  end
end
