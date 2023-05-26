class Market
  attr_reader :id, :name, :street, :city, :state, :zip

  def initialize(data)
    @id = data.dig(:data, :id).to_i
    @name = data.dig(:data, :attributes, :name)
    @street = data.dig(:data, :attributes, :street)
    @city = data.dig(:data, :attributes, :city)
    @state = data.dig(:data, :attributes, :state)
    @zip = data.dig(:data, :attributes, :zip)
  end
end