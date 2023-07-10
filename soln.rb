def convert_to_24_hour_format(time)
    time_part, indicator = time.split(' ')
    hours, minutes = time_part.split(':').map(&:to_i)
  
    converted_hours = hours
    if indicator == 'PM' && hours != 12
      converted_hours += 12
    elsif indicator == 'AM' && hours == 12
      converted_hours = 0
    end
  
    formatted_time = "#{converted_hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}"
    formatted_time
  end
  
  # Example usage
  input_time = '02:30 PM'
  converted_time = convert_to_24_hour_format(input_time)
  puts converted_time  # Output: "14:30"
  