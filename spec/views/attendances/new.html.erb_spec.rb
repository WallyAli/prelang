require 'spec_helper'

describe "attendances/new" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :date => "MyString",
      :child => nil
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attendances_path, "post" do
      assert_select "input#attendance_date[name=?]", "attendance[date]"
      assert_select "input#attendance_child[name=?]", "attendance[child]"
    end
  end
end
