# encoding: UTF-8  
require 'spec_helper'

describe Conta do
  it { should have_many(:razoes) }
  it { should belong_to(:usuario) }      
  
  
end
