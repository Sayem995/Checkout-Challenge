class Shop
  def checkout(items)
    return -1 if items != items.upcase || items =~ /\d/ 

  end
end
