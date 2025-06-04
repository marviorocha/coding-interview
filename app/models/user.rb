class User < ApplicationRecord
  belongs_to :company

  scope :by_company, -> (identifier) { where(company_id: identifier) if identifier.present? }
  scope :by_username, -> (username) { where('username LIKE ?', "%#{username}%") if username.present? }

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_later
  end
end
