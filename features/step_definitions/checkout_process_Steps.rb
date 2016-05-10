
Given(/^I am on the puppy adoption site$/) do
  visit(DetailsPage)
end

When(/^I attempt to checkout for puppy "([^"]*)", without (?:a|an) "([^"]*)"$/) do |puppy_name, field|
  on(DetailsPage).view_details(puppy_name)
  on(PuppyDetailsPage).loaded?(puppy_name).should be true
  on(PuppyDetailsPage).open_adoption_page
  on(PuppyItemsPage).loaded?
  on(PuppyItemsPage).complete_adoption
  on(CheckoutPage).loaded?
  case field
    when 'Name'
      on(CheckoutPage).checkout('name' => '')
    when 'Address'
      on(CheckoutPage).checkout('address' => '')
  end


end

Then(/^I should see the error message "([^"]*)"$/) do |error_message|
  @browser.text.include?(error_message).should be true
  sleep 8
end

When(/^I navigate to the checkout page$/) do
  on(DetailsPage).view_details
  on(PuppyDetailsPage).open_adoption_page
  on(PuppyItemsPage).complete_adoption
end

Then(/^I should see the following payment options:$/) do |table|
  on(CheckoutPage).exist_all_payment_options?(table).should be true
end

When(/^I complete the adoption of a puppy$/) do
  on(DetailsPage).view_details
  on(PuppyDetailsPage).open_adoption_page
  on(PuppyItemsPage).loaded?
  on(PuppyItemsPage).complete_adoption
  on(CheckoutPage).loaded?
  on(CheckoutPage).checkout
end

Then(/^I should see the text "([^"]*)"$/) do |thanks_message|
  @browser.text.should include thanks_message
end
