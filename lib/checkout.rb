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
    @cost += case item
    when 'A'
       50
    when 'B'
       30
    when 'C'
       20
    when 'D'
       15
    end
  end
  @cost
end
