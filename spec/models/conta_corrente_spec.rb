# encoding: UTF-8  
require 'spec_helper'

describe ContaCorrente do 
  context "Dado que uma conta corrente nova deva ser criada" do
     it "criar uma nova conta corrente" do
       conta_corrente = ContaCorrente.create(nome: "Teste")
       conta_corrente.reload.id.should_not nil
     end
     it "um saldo inicial diferente de R$ 0.00 devera ser criada" do
       conta_corrente = ContaCorrente.create(saldo_inicial: 13.35, nome: "Teste")
       conta_corrente.reload.saldo_inicial.should eq(13.35)
     end
  end
  context "Dada uma conta corrente criada com saldo inicial de R$ 899,00" do
     conta_corrente = ContaCorrente.create(saldo_inicial: 899.00, nome: "Mais uma conta de testes", debito: false)
     it "é sacado R$ 399,00" do
       conta_corrente.novo_lancamento(-399.00)
       conta_corrente.saldo.should eq(500.00)
     end
  end
end