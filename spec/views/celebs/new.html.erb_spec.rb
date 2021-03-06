require 'rails_helper'

RSpec.describe "celebs/new", :type => :view do
  before(:each) do
    assign(:celeb, Celeb.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :name => "MyString",
      :bio => "MyText"
    ))
  end

  it "renders new celeb form" do
    render

    assert_select "form[action=?][method=?]", celebs_path, "post" do

      assert_select "input#celeb_first_name[name=?]", "celeb[first_name]"

      assert_select "input#celeb_last_name[name=?]", "celeb[last_name]"

      assert_select "input#celeb_name[name=?]", "celeb[name]"

      assert_select "textarea#celeb_bio[name=?]", "celeb[bio]"
    end
  end
end
