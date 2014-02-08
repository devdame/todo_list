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
    when 7 then save_list
    when 8 then quit_program
    else
      view.invalid_choice
      main_menu
    end
  end

  def display_list
    puts
    list.display
    main_menu
  end

  def add_task
    view.prompt_user_new_task
    task = view.get_user_input_string
    list.add_task(task)
    view.task_added(task)
    main_menu
  end

  def remove_task
    list.display
    view.prompt_user_task_id
    task_id = view.get_user_input_int
    task = list.delete_task(task_id)
    view.task_removed(task)
    main_menu
  end

  def tag_task
    list.display
    view.prompt_user_task_id
    task_id = view.get_user_input_int
    view.prompt_user_add_task
    tag = view.get_user_input_string.downcase
    list.add_tag_to_task(task_id, tag)
    main_menu
  end

  def view_tags
    all_tags = list.display_tags
    view.display_tags(all_tags)
    tag_choice = view.get_user_input_int
    list.display_by_tag(all_tags[tag_choice - 1])
    main_menu
  end

  def complete_task
    list.display
    view.prompt_user_task_id
    task_id = view.get_user_input_int
    list.task_complete(task_id)
    main_menu
  end

  def quit_program
    view.display_exit
    list.update_file
  end

  def save_list
    list.update_file
    main_menu
  end

  attr_reader :list, :view
end

Todo.new.run!
