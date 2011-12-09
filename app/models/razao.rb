class Razao < ActiveRecord::Base
  belongs_to :conta
  belongs_to :usuario
  
  # muda o sinal para negativo, caso o lançamento seja feito um uma conta de débito
  def valor=(valor_antes_do_sinal)
    sinal = conta && conta.debito ? -1.0 : 1.0
    write_attribute(:valor, valor_antes_do_sinal * -1.0)
  end
  
end
