require_relative 'enumerable'
class MyList
  include MyEnumerable

  def initialize(*enummembers)
    @list = enummembers
  end

  def each(&enum_methods)
    @list.each(&enum_methods)
  end
end

@list = MyList.new(1, 2, 3, 4)
puts @list
