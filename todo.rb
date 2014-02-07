require_relative 'list'
require_relative 'view'

class Todo

  def initialize
    @list = List.new
    @view = View.new
  end

end
