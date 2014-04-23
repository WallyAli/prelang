require 'spec_helper'

describe "children/show" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :first_name => "First Name",
      :last_name => "Last Name",
      :birthday => "Birthday",
      :gender => "Gender",
      :parent => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Birthday/)
    rendered.should match(/Gender/)
    rendered.should match(//)
  end
end
