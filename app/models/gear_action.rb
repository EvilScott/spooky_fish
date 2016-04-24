class GearAction < ActiveRecord::Base
  belongs_to :action_type
  belongs_to :net_type
  belongs_to :region
  belongs_to :reason
  belongs_to :credit

  validates :owner, presence: true
  validates :credit, absense: true, unless: :expect_credit?
  validates :disposal_receipt, absense: true, unless: :expect_disposal?

  def is_sold?
    action_type == ActionType.find_by_action_name('Sold')
  end

  def expect_credit?
     is_sold? && reason == Reason.find_by_reason_type('Replace Recycled')
  end

  def expect_disposal?
    is_sold? && reason == Reason.find_by_reason_type('Replace Disposed')
  end
end
