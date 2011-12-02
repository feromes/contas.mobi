require 'spec_helper'

describe Conta do
  it { should have_many(:razoes) }
  it { should belong_to(:user) }
end
