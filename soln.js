function convertTo24HourFormat(time) {
  // Parse the time string
  const [timePart, indicator] = time.split(" ");
  const [hours, minutes] = timePart.split(":").map(Number);

  // Convert hours to 24-hour format
  let convertedHours = hours;
  if (indicator === "PM" && hours !== 12) {
    convertedHours += 12;
  } else if (indicator === "AM" && hours === 12) {
    convertedHours = 0;
  }

  // Format the time in 24-hour format
  const formattedTime = `${String(convertedHours).padStart(2, "0")}:${String(
    minutes
  ).padStart(2, "0")}`;

  return `${time} => ${formattedTime} hrs`;
}

// Example usage
const inputTime = "12:30 AM";
const convertedTime = convertTo24HourFormat(inputTime);
console.log(convertedTime); // Output: "14:30"
