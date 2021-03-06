require 'spec_helper'

describe List do
   before do
    @user = User.new(email: "test@test.com", username: "tester")
    @list = List.new(title: "My List", list_type: "private", user_id: @user.id)
  end

  subject { @list }

  it { should respond_to(:title) }
  it { should respond_to(:list_type) }
  it { should respond_to(:user_id) }
  it { should be_valid }
end
