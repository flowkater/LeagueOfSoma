class LeagueController < ApplicationController
  def main
  	@members = Member.all
  	
  end
end
