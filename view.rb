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
[7] Save List
[8] Exit/ Save

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

  def prompt_user_task_id
    print "Enter Task Id: "
  end

  def task_removed(task)
    puts "Removed \"#{task}\" from list"
  end

  def prompt_user_task_id
    print "Choose a task: "
  end

  def prompt_user_add_task
    print "Enter tag name: "
  end

  def display_tags(tags)
    counter = 1
    tags.each do |tag|
      puts "[#{counter}] #{tag}"
      counter += 1
    end
    print "Choice: "
  end

  def display_exit
    print "Saving file"
    4.times {print "."; sleep(0.4)}
    puts "\nBye!"
    sleep(1.4)
  end
end
