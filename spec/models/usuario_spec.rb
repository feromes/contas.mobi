# encoding: UTF-8  
require 'spec_helper'

describe Usuario do
  it { should have_many(:contas) }
end