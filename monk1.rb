class Item
    require 'awesome_print'
    attr_reader :item_name, :qty

    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
      ap "#{other_item.item_name} = other_item"
      ap "Item (#{@item_name}, #{@qty})"
      @item_name
    end
end

p Item.new("item1",1) == Item.new("item2",2)
# p Item.new("abcd",2)  == Item.new("abcd",1)
