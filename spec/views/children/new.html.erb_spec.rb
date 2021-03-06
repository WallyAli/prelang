require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child,
      :first_name => "MyString",
      :last_name => "MyString",
      :birthday => "MyString",
      :gender => "MyString",
      :parent => nil
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", children_path, "post" do
      assert_select "input#child_first_name[name=?]", "child[first_name]"
      assert_select "input#child_last_name[name=?]", "child[last_name]"
      assert_select "input#child_birthday[name=?]", "child[birthday]"
      assert_select "input#child_gender[name=?]", "child[gender]"
      assert_select "input#child_parent[name=?]", "child[parent]"
    end
  end
end
