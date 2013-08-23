class MembersController < ApplicationController
  #before_filter :set_member, only: [:show, :edit, :update, :destroy]

  #protect_from_forgery :only => [:create, :update, :destroy]
  
  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])

    if @member.save
	redirect_to members_path, notice: 'Member was successfully created.'
    else
	render action: 'new'
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

 # private
 #   def set_member
 #     @member = Member.find(params[:id])
 #   end
 #   def product_params
 #     params.require(:member).permit(:name, :photo)
 #   end
end
