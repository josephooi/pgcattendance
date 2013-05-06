class Conflict < ActiveRecord::Base
  attr_accessible :belongs_to, :belongs_to, :description, :details, :ctype, :user_id, :event_id

  def conflict(c)
    if (c == "pe")
      return "PAC-Excused"
    elsif (c == "e")
      return "Excused"
    elsif (c == "gu")
      return "Good Unexcused"
    else # c == "bu"
      return "Bad Unexcused"
    end
  end
end
