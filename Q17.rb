class TaskRunner
  def initialize
    @tasks = []
  end
  def create_task(name)
    @tasks.push(name) unless @tasks.include?(name)
  end
  def complete_task(name)
    @tasks.delete(name) if @tasks.include?(name)
  end
  def show_in_progress_tasks
    @tasks.each { |task| puts "#{task} is in progress!" }
  end
end

task_runner = TaskRunner.new

task_runner.create_task("Fire")
task_runner.create_task("Eat")
task_runner.create_task("Sleep")
task_runner.create_task("Gym")

task_runner.complete_task("Sleep")

task_runner.show_in_progress_tasks
