require 'spec_helper'

class FormSection;
end

describe "children/new.html.erb" do

  before :each do
    @form_section = FormSection.new :unique_id => "section_name", :enabled=>"true"
    assigns[:form_sections] = [@form_section]
  end

  it "renders a form that posts to the children url" do
    render

    response.should have_selector("form", :action => children_path )
  end
  
  it "renders the children/form_section partial" do
      template.should_receive(:render).with(
              :partial => "form_section",
              :collection => [@form_section]
      )

      render
    end

end
