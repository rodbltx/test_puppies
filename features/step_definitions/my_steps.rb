When(/^I navigate to the webapp$/) do
  #@browser.goto 'http://puppies.herokuapp.com'
  pending
end

And(/^I view details$/) do
  #@browser.button(:value => 'View Details').click
  pending
end

And(/^I click on the adopt button$/) do
  #@browser.button(:value => 'Adopt Me!').click
  pending
  @text = @browser.button(:value => 'Adopt Me!').text
end

And(/^I complete the adoption form$/) do
  # @browser.button(:value => 'Complete the Adoption').click
  # @browser.text_field(:id => 'order_name').set('Andres')
  # @browser.textarea(:id => 'order_address').set('3591 Avenida Republica de Panamá')
  # @browser.text_field(:id => 'order_email').set('random@email.com')
  # @browser.select_list(:id => 'order_pay_type').select('Check')
  # @browser.button(:value => 'Place Order').when_present(30).click
  pending
  puts @text
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  # @browser.text.should include expected_message
  pending
end

And(/^I check the button "([^"]*)"$/) do |arg|
  pending
end