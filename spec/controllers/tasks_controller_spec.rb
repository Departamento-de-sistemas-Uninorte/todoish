require 'rails_helper'

RSpec.describe TasksController, "#create" do
  context "When a task is saved with invalid params" do
    it "should not be save on DB and render an error" do
      expect { Task.create!}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end

