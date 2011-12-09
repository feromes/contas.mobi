# encoding: UTF-8  
require 'spec_helper'

describe Razao do
  it { should belong_to(:conta) }
  it { should belong_to(:usuario) }
  
  context "Dada uma conta de Saida recem criada, como por exemplo despesas de condominio" do
    it "um novo lancamento é realizado no valor de R$ 200,00" do
      pending("fazer um lancamento de condominio de R$ 200,00")
    end
  end
  
  context "Dada uma conta de entrada chamada Recebimento de Trabalhos extras" do
    it "um novo lancamento no valor de R$ 1000,00 é realizado" do
      pending("get the vocal chords working")
    end
  end
end
