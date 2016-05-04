class PuppyItemsPage
include PageObject
  button(:complete, :value => 'Complete the Adoption')

  def loaded?
    begin
      Watir::Wait.until(5) { complete_element.exists? }
      true
    rescue error
      false
    end

  end

  def complete_adoption
    complete
  end
end