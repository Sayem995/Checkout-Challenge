class Shop
  def checkout(items)
    return -1 unless items.kind_of? String
    return -1 if items != items.upcase || items =~ /\d/
    @cost = 0
    calc(items.chars)

  end
end

def calc(items)
  items.each do |item|
    case item
    when 'A'
      @cost += 50
    end
  end
  @cost
end
