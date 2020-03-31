class Event < ApplicationRecord
  def start
    self.start2
  end

  def to_json(options = {})
    options[:except] = :start2
    options[:methods] = :start
    super
  end

  def editable?
    Date.today < start ? true : false

    end
  end
