class Shop
  def checkout(items)
    return -1 unless items.kind_of? String
    return -1 if items != items.upcase || items =~ /\d/

    calc(items)

  end
end
