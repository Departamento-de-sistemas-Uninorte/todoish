require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
  end
end

RSpec.describe Task, type: :model do
  pending "Peding example"
end
