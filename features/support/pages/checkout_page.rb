class CheckoutPage
  include PageObject

  text_field(:name, :id => 'order_name')
  text_area(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:pay_type, :id => 'order_pay_type')
  button(:place_order, :name => 'commit')

  DEFAULT_DATA = {
      'name' => 'Joe',
      'address' => 'My Address',
      'email' => 'belatrix@mail.com',
      'pay_type' => 'Check'
  }

  def loaded?
    begin
      Watir::Wait.until(5) { name_element.exists? }
      true
    rescue error
      false
    end
  end

  def checkout(data = {})
    data = DEFAULT_DATA.merge(data)
    self.name = data['name']
    self.address = data['address']
    self.email = data['email']
    self.pay_type = data['pay_type']
    place_order
  end

  def exist_all_payment_options?(table)
    table.hashes.each do |pay_type|
      unless exists_payment_option?(pay_type)
        return false
        break
      end
    end
    return true
  end

  def exists_payment_option?(payment_option)
    pay_type_element.include? payment_option['pay_type']
  end
end