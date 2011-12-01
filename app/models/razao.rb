class Razao < ActiveRecord::Base
  belongs_to :conta
  belongs_to :user
end
