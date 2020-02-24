class Space
    
    def initialize(name, description, price, host)
    @name = name
    @description = description
    @price = price
    @host = host
    end

def self.create(name, description, price, host)
    space = Space.new(name, description, price, host)
end

def self.all
    return ['space_1', 'space_mansion'];
end

attr_reader :name, :description, :price, :host
end
