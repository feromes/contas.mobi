class Conta < ActiveRecord::Base
  belongs_to :usuario 
  has_many :razoes, :class_name => "Razao", :foreign_key => "razao_id"
end