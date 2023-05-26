class Market
  attr_reader :id, :name, :street, :city, :state, :zip

  def initialize(data)
    @id = data[:id].to_i
    @name = data.dig(:attributes, :name)
    @street = data.dig(:attributes, :street)
    @city = data.dig(:attributes, :city)
    @state = data.dig(:attributes, :state)
    @zip = data.dig(:attributes, :zip)
  end
end