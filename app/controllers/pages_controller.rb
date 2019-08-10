class PagesController < ApplicationController
  def now
    @members = Member.members.members
    @next_crb = Meeting.find_or_create_next_date
    @board_members = BoardMember.all.order(director: :desc, title: :asc)
  end
end
