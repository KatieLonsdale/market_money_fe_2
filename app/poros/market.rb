class Market
  attr_reader :id, :name, :city, :state

  def initialize(data)
    @id = data[:id].to_i
    @name = data.dig(:attributes, :name)
    @city = data.dig(:attributes, :city)
    @state = data.dig(:attributes, :state)
  end
end