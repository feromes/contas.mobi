require 'spec_helper'

describe Usuario do
  it { should have_many(:contas) }
  it { should have_many(:razoes).through(:contas)}
end