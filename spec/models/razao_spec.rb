require 'spec_helper'

describe Razao do
  it { should belong_to(:conta) }
  it { should belong_to(:usuario) }
end
