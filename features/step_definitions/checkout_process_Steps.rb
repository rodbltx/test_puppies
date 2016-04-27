When(/^I navigate to the checkout page$/) do
  pending
end

Given(/^I am on the puppy adoption site$/) do
  visit(DetailsPage)
end

When(/^I attempt to checkout without a name$/) do
  on(DetailsPage).view_details
  on(PuppyDetailsPage).open_adoption_page
  on(PuppyItemsPage).complete_adoption
  on(CheckoutPage).checkout(name => '')
end

Then(/^I should see the error message "([^"]*)"$/) do |arg|
  pending
end

When(/^I attempt to checkout without an address$/) do
  on(DetailsPage).view_details
  on(PuppyDetailsPage).open_adoption_page
  on(PuppyItemsPage).complete_adoption
  on(CheckoutPage).checkout(address => '')
end

Then(/^I should see the following payment options:$/) do |table|
  # table is a table.hashes.keys # => [:pay_type]
  pending
end

When(/^I complete the adoption of a puppy$/) do
  pending
end