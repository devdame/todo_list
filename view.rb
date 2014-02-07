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

  def get_user_input
    gets.chomp.to_i
  end

  def invalid_choice
    puts "Invalid option, try again.\n"
  end

  def display_tasks(list)
    puts list
  end


end
