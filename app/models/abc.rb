class Abc < ApplicationRecord


  before_create :fake_name


  def fake_name
    self.name = FFaker::Name.first_name
  end

end


