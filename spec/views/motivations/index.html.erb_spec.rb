require 'spec_helper'

describe "motivations/index.html.erb" do
  before(:each) do
    assign(:motivations, [
      stub_model(Motivation,
        :theme_id => 1,
        :user_id => 1,
        :energy => 1,
        :comment => "Comment"
      ),
      stub_model(Motivation,
        :theme_id => 1,
        :user_id => 1,
        :energy => 1,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of motivations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
