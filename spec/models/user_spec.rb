require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:company_1) { create(:company) }
  let!(:company_2) { create(:company) }

  let!(:user_1) { create(:user, username: 'max', company: company_1) }
  let!(:user_2) { create(:user, username: 'mathew', company: company_2) }
  let!(:user_3) { create(:user, username: 'mary', company: company_1) }

  describe '.by_company' do
    it 'returns users belonging to the specified company' do
      expect(User.by_company(company_1.id)).to match_array([user_1, user_3])
      expect(User.by_company(company_2.id)).to match_array([user_2])
    end

    it 'returns all users when no company identifier is provided' do
      expect(User.by_company(nil)).to match_array([user_1, user_2, user_3])
    end
  end

  describe '.by_username' do
    it 'returns users matching the username partially' do
      expect(User.by_username('ma')).to match_array([user_1, user_2, user_3])
    end

    it 'is case insensitive' do
      expect(User.by_username('Ma')).to match_array([user_1, user_2, user_3])
    end

    it 'returns an empty array when no match is found' do
      expect(User.by_username('xyz')).to be_empty
    end
  end
end
