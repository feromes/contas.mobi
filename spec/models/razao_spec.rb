# encoding: UTF-8  
require 'spec_helper'

describe Razao do
  it { should belong_to(:conta) }
  it { should belong_to(:usuario) }
  
  context "Dada que uma razão pertence a uma conta de saida" do
    it "Toda inclusão padrão deve ser um lançamento em negativo" do
      pending("get the vocal chords working")
    end
  end
  
  context "Dada que uma razão pertence a uma conta de entrada" do
    it "Toda inclusão padrão deve ser um lançamento positivo" do
      pending("get the vocal chords working")
    end
  end
end
