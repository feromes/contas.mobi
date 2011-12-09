# encoding: UTF-8  
require 'spec_helper'

describe Razao do
  it { should belong_to(:conta) }
  it { should belong_to(:usuario) }
  
  context "Dada uma conta de Saida recem criada, como por exemplo despesas de condominio" do
    conta_de_condominio = Saida.create(nome: "Condomínio", debito: true)
    it "um novo lancamento é realizado no valor de R$ 200,00" do
      conta_de_condominio.razoes.create(valor: 200.00) 
      conta_de_condominio.saldo.should eq(-200.00)
    end
  end
  
  context "Dada uma conta de entrada chamada Recebimento de Trabalhos extras" do
    it "um novo lancamento no valor de R$ 1000,00 é realizado" do
      pending("get the vocal chords working")
    end
  end
end
