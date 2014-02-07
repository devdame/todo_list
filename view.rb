class View

  def initialize

  end

  def greeting
    puts "Welcome"
  end

  def display_menu
    puts <<-INPUT

[1] Display Tasks
[2] Add Task
[3] Remove Task
[4] Tag Task
[5] View Tags
[6] Complete Task

INPUT
    print "Choice: "
  end

  def get_user_input_int
    gets.chomp.to_i
  end

  def invalid_choice
    puts "Invalid option, try again.\n"
  end

  def display_tasks(list)
    puts list
  end

  def prompt_user_new_task
    print "Enter Task: "
  end

  def get_user_input_string
    gets.chomp
  end

  def task_added(task)
    puts "Added \"#{task}\" to list"
  end

  def prompt_user_remove_task
    print "Enter Task Id: "
  end

  def task_removed(task)
    puts "Removed \"#{task}\" from list"
  end

  def prompt_user_task_id
    print "Choose a task to add tag: "
  end

  def prompt_user_add_task
    print "Enter tag name: "
  end

  def display_tags(tags)
    counter = 1
    tags.each do |tag|
      puts "[#{counter}] tag"
      counter += 1
    end
  end


end
