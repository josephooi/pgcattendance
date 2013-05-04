class Event < ActiveRecord::Base
  attr_accessible :call, :calllocation, :category, :date, :description, :dress, :end, :title
end
