class LeagueController < ApplicationController
  def main
  	$this_16_members ||= []
  	$this_8_members ||= []
  	$this_4_members ||= []
  	$this_2_members ||= []
  	$this_final_members ||= []
  	$last ||= nil
  	@match = 0
 
 	if $this_16_members.length > 0
 		@first = $this_16_members.first
 	 	@second = $this_16_members.second
 		@match = 16
 	elsif $this_8_members.length > 0
 		@first = $this_8_members.first
 	 	@second = $this_8_members.second
 		@match = 8
 	elsif $this_4_members.length > 0
 		@first = $this_4_members.first
 	 	@second = $this_4_members.second
 		@match = 4
 	elsif $this_2_members.length > 0
 		@first = $this_2_members.first
 	 	@second = $this_2_members.second
 		@match = 2
 	elsif $this_final_members.length > 0
 		@first = $this_final_members.first
 	 	@second = $this_final_members.second
 		@match = 1
 	end
  end

  def select16
  	@select = $this_16_members.select{|m| m.id == params[:select].to_i}.first
  	@unselect = $this_16_members.select{|m| m.id == params[:unselect].to_i}.first

  	$this_16_members.delete_if{|m| m.id == @select.id || m.id == @unselect.id}

  	$this_8_members << @select
  	redirect_to root_url
  end

  def select8
  	@select = $this_8_members.select{|m| m.id == params[:select].to_i}.first
  	@unselect = $this_8_members.select{|m| m.id == params[:unselect].to_i}.first

  	$this_8_members.delete_if{|m| m.id == @select.id || m.id == @unselect.id}

  	$this_4_members << @select
  	redirect_to root_url
  end

  def select4
  	@select = $this_4_members.select{|m| m.id == params[:select].to_i}.first
  	@unselect = $this_4_members.select{|m| m.id == params[:unselect].to_i}.first

  	$this_4_members.delete_if{|m| m.id == @select.id || m.id == @unselect.id}

  	$this_2_members << @select
  	redirect_to root_url
  end

  def select2
  	@select = $this_2_members.select{|m| m.id == params[:select].to_i}.first
  	@unselect = $this_2_members.select{|m| m.id == params[:unselect].to_i}.first

  	$this_2_members.delete_if{|m| m.id == @select.id || m.id == @unselect.id}

  	$this_final_members << @select
  	redirect_to root_url
  end

  def select1
  	@select = $this_final_members.select{|m| m.id == params[:select].to_i}.first
  	$last = @select
  	@subject = Subject.last

  	@subject.selections.create(member_id: @select.id)

  	redirect_to end_path
  end

  def end
  	@last = $last
  	$this_16_members = []
  	$this_8_members = []
  	$this_4_members = []
  	$this_2_members = []
  	$this_final_members = []
  	$last = nil
  	@subject = Subject.last
  	count = @subject.total_count + 1
  	@subject.update_attributes(total_count: count)
  end

  def start
  	$this_16_members = Member.load_thirtytwo
  	redirect_to root_url
  end

  def rank
  	
  end
end
