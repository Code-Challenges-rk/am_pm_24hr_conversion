function convertTo24HourFormat(time) {
    const date = new Date(`1970-01-01 ${time}`);
    const formattedTime = date.toLocaleTimeString('en-US', { hour12: false, hour: '2-digit', minute: '2-digit' });
    // const formattedTime = date.toLocaleTimeString('en-gb');
    return formattedTime;
  }
  
  // Example usage
  const inputTime = '02:30 PM';
  const convertedTime = convertTo24HourFormat(inputTime);
  console.log(convertedTime);  // Output: "14:30"
  