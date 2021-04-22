class Abc < ApplicationRecord
  before_create :fake_name

  def fake_name
    self.name = FFaker::Name.first_name
  end

  scope :pending, -> {where(accepted_at: nil).where(rejected_at: nil)}

  def accept!
    self.accepted_at = Time.current
    self.save!
  end

  def reject!
    self.rejected_at = Time.current
    self.save!
  end

end


