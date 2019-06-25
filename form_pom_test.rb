require "rspec"
require "pages/FormPage"

describe "automating a form" do 
    it "submits a form" do
      form = FormPage.new()
      form.fill_form('Allan','Freitas','QA','05/25/2025')
      form.wait
      expect($driver.find_element(class: 'alert').text).to eql('The form was successfully submitted!')
      form.quit_browser
    end
end
