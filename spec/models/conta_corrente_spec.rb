# encoding: UTF-8  
require 'spec_helper'

describe ContaCorrente do 
  context "Dado que uma conta corrente nova deva ser criada" do
     it "criar uma nova conta corrente" do
       conta_corrente = ContaCorrente.create
       conta_corrente.reload.id.should_not nil
     end
     it "um saldo inicial diferente de R$ 0.00 devera ser criada" do
       pending
     end
  end
  context "Dada uma conta corrente criada com saldo inicial de R$ 899,00" do
     it "é sacado R$ 399,00" do
       pending
     end
  end
end