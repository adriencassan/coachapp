class HabitElement < ApplicationRecord
  has_many :habitsets



  def isCompleted(date)
    habitsets = Habitset.where("status In ('Completed', 'Failed') and habit_element_id= #{self.id} and date='#{date}'  ").pluck(:status)
    if habitsets.empty?
      0
    elsif habitsets.count("Failed") == 0
      1
    else
      -1
    end
  end


  def buildcalendar
    start_date = Date.new(2021,05,01)
    start_date2 = start_date-start_date.wday+1
    end_date = start_date+3.month-1

    datelist = (start_date2..end_date).to_a
    datelist.map!{|date| [date,self.isCompleted(date)] }

    arraytemp =[[],[],[]]


    while not datelist.empty?
        arraytemp[[datelist[0][0].month-start_date.month,0].max] <<  datelist.shift(7)
    end

     arraytemp
     #datelist
  end

end
