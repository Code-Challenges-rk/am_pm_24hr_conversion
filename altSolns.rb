require 'time'
require 'date'

def convert_to_24_hour_format(time)
    time_object = Time.strptime(time, "%I:%M %p")
    puts "t_o", time_object
    formatted_time = time_object.strftime("%H:%M")
    formatted_time
  end
  
  # Example usage
  input_time = '02:30 PM'
  converted_time = convert_to_24_hour_format(input_time)
  puts converted_time  # Output: "14:30"


#   alt 2
def convert_to_24_hour_format_2(time)
    date = DateTime.parse("1970-01-01 #{time}");
    puts "date", date
    formatted_time = date.strftime("%H:%M")
    formatted_time
end

input_time = '0:30 AM'
conv = convert_to_24_hour_format_2(input_time)
puts conv
  