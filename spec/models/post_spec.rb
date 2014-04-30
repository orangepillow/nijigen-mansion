require 'spec_helper'

describe Note do
  let(:note) { create(:note) }
  before { @post = note.posts.build }
  subject { @post }

  it { should respond_to(:author) }
  it { should respond_to(:content) }
  it { should respond_to(:note_id) }

  it "is invalid without a note_id" do
    expect(build(:post, note_id: nil)).to have(1).errors_on(:note_id)
  end

  it "is invalid without a content" do
    expect(build(:post, content: nil)).to have(1).errors_on(:content)
  end
end
