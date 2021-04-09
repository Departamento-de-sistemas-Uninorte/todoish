class DeleteTweetJob < ApplicationJob
  queue_as :default

  def perform(task)
    task.destroy
  end

  def error(job, exception)
    puts "Something went wrong"
  end

  def failure(job, exception)
    puts "Something went wrong"
  end
end
