class Event < ActiveRecord::Base
  attr_accessible :call, :calllocation, :category, :date, :description, :dress, :end, :title

  validates :title, presence: true

  def set_brief
    brief = @event.first + @event.last
  end

end
