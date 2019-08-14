class VendingMachine
  def initialize(items)
    @items=items
  end
 
  def vend(code, paid)
    item   = items[code.to_sym]
    change = paid - item[:price].to_i
   
    if paid >= item[:price].to_i
      [item[:name], change]
    else
      [nil, paid, paid - item[:price].to_i]
    end
  end
end
items = {'001' => { name:'Cocoa Cola',price:'80'}}
v = VendingMachine.new(items)
v.vend('001',10)
