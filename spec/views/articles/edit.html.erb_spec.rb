require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      alt: "MyString",
      title: "MyString",
      caption: "MyString",
      content: "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[alt]"

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[caption]"

      assert_select "textarea[name=?]", "article[content]"
    end
  end
end
