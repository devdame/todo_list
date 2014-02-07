require_relative 'list'
require_relative 'view'

class Todo

  def initialize
    @list = List.new
    @view = View.new
  end

  def run!
    view.greeting
    main_menu
  end

  private

  def main_menu
    view.display_menu
    main_menu_selection(view.get_user_input)
  end

  def main_menu_selection(choice)
    case choice
    when 1 then display_list
    when 2 then add_task
    when 3 then remove_task
    when 4 then tag_task
    when 5 then view_tags
    when 6 then complete_task
    else
      view.invalid_choice
      main_menu
    end
  end

  def display_list
    view.display_tasks(list)
  end

  def add_task
    view.prompt_user_new_task
  end

  def remove_task

  end

  def tag_task

  end

  def view_tags

  end

  def complete_task

  end

  attr_reader :list, :view
end

Todo.new.run!
