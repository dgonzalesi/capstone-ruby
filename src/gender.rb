# Class that store the diferent Gener that are avalible
class Gener
  attr_reader :id

  def initialize(name)
    @id = "gen-#{rand(1_000_000)}"
    @name = name
    @items = []
  end

  def add_item(item)
    return if @items.include?(item)

    @items.push(item)
  end
end
