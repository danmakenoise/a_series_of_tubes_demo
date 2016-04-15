class Cat
  attr_reader :name, :owner

  def initialize params=nil
    params ||= {}
    @name = params['name']
    @owner = params['owner']
  end
end
