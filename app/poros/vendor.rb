class Vendor
  attr_reader :id, :name, :description, :contact_name, :contact_phone, :credit_accepted

  def initialize(data)
    @id = data[:id].to_i
    @name = data.dig(:attributes, :name)
    @description = data.dig(:attributes, :description)
    @contact_name = data.dig(:attributes, :contact_name)
    @contact_phone = data.dig(:attributes, :contact_phone)
    @credit_accepted = data.dig(:attributes, :credit_accepted)
  end
end