require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      parent_id: 1,
      team_id: 1,
      location_id: 1,
      alt_text: "MyString",
      headline_text: "MyString",
      caption_text: "MyString",
      content: "MyText",
      comment: false
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input[name=?]", "category[parent_id]"

      assert_select "input[name=?]", "category[team_id]"

      assert_select "input[name=?]", "category[location_id]"

      assert_select "input[name=?]", "category[alt_text]"

      assert_select "input[name=?]", "category[headline_text]"

      assert_select "input[name=?]", "category[caption_text]"

      assert_select "textarea[name=?]", "category[content]"

      assert_select "input[name=?]", "category[comment]"
    end
  end
end
