require 'spec_helper'

describe Conta do
  it { should have_many(:razoes) }
  it { should belong_to(:usuario) }      
        
  context "operacoes permitidas"
  context "conta de despesa" do
     it "deve ser sempre armazenada com sinal negativo" do
       
     end
  end
end
