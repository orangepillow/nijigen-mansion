require 'spec_helper'

describe Room do
  let(:room) { create(:room) }
  subject { room }

  it { should respond_to(:name) }

  it 'is invalid without a name' do
    expect(build(:room, name: nil)).to have(1).errors_on(:name)
  end
end
