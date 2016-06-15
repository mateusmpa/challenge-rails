class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def start
    challenge = Challenge.find(params[:id])
    challenge.started_challenges.create(user: current_user)
    redirect_to challenge
  end
end
