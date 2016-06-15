require 'rails_helper'

describe Challenge do

  describe '#started_by?' do
    it 'should be truthy' do
      user = create(:user)
      challenge = create(:challenge)
      create(:started_challenge, user: user, challenge: challenge)

      expect(challenge.started_by? user).to be_truthy
    end

  end
end
