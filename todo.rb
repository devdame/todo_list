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
    main_menu_selection(view.get_user_input_int)
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
    main_menu
  end

  def add_task
    view.prompt_user_new_task
    task = view.get_user_input_string
    #list.add_task(task)
    view.task_added(task)
    main_menu
  end

  def remove_task
    view.display_tasks(list)
    view.prompt_user_remove_task
    task_id = view.get_user_input_int
    #task = list.remove_task(task_id)
    #view.task_removed(task)
    main_menu
  end

  def tag_task
    view.display_tasks(list)
    view.prompt_user_task_id
    task_id = get_user_input_int
    view.prompt_user_add_task
    tag = get_user_input_string
    #task.add_tag(task_id, tag)
    main_menu
  end

  def view_tags
    #all_tags = list.all_tags
    #view.display_tags(all_tags)
    tag_choice = get_user_input_int

  end

  def complete_task

  end

  attr_reader :list, :view
end

Todo.new.run!
