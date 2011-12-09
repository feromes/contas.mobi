# encoding: UTF-8   
require 'spec_helper'

describe Entrada do
  context "Dada uma conta de entrada Salario com lançamentos que somam R$ 100.000" do
    entrada_salario = Entrada.create(nome:"Salario")
    10.times { entrada_salario.novo_lancamento(10000.00) }
    it "um saldo de R$ 100000.00 deve estar disponível" do
      entrada_salario.saldo.should eq(100000.0) 
    end
    it "uma nova sub conta de salario, cahamada Horas Extras é criada" do
      pending
    end
    it "um novo lancamento de R$ 2500,00 é feito em horas extras" do
      pending
    end
    it "um novo lancamento de R$ 10000,00 é feito em salarios" do
      pending
    end
  end
end
