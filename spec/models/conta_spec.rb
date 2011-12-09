# encoding: UTF-8  
require 'spec_helper'

describe Conta do
  it { should have_many(:razoes) }
  it { should belong_to(:usuario) }      
  
  context "Um novo usuário acabou de criar a sua conta" do
    it "algumas opções de planos de contas devem ser sugeridas" do
      pending
    end
    it "o usuário escolhe um plano de contas que mais se adequa a sua realidade" do
      pending
    end
    it "o usuário decide não escolher nenum plano de contas padrão e sim criar o seu próprio" do
      pending
    end
  end
end
