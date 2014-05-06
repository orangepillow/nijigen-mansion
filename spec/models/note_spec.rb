require 'spec_helper'

describe Note do
  let(:room) { create(:room) }
  before { @note = room.notes.build(title: 'Lorem ipsum') }
  subject { @note }

  it { should respond_to(:title) }
  it { should respond_to(:room_id) }

  it 'is invalid without a room_id' do
    expect(build(:note, room_id: nil)).to have(1).errors_on(:room_id)
  end

  it 'is invalid without a title' do
    expect(build(:note, title: nil)).to have(1).errors_on(:title)
  end
end
