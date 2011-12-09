class Conta < ActiveRecord::Base
  belongs_to :usuario 
  has_many :razoes, :class_name => "Razao", :foreign_key => "conta_id"
  validates_presence_of :nome
  
  def saldo
    razoes.sum(:valor)
  end
end
