require 'rails_helper'

describe User do
  
  it "Should has account by default" do
    account=create(:account,id: 1)
    user=create(:user,account: nil)
    expect(user.account_id).to eq(account.id)
  end


end
