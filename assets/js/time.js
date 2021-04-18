export function convertHoursDurationToHuman(duration) {
  const {
    hours = 0,
    minutes = 0,
  } = convertHoursDurationToHoursAndMinutesDuration(duration);

  const hoursText = `${hours} hours`;
  const minutesText = `${minutes} minutes`;

  if (hours && minutes) return `${hoursText} and ${minutesText}`;
  if (hours) return hoursText;
  return minutesText;
}

export function convertHoursDurationToHoursAndMinutesDuration(duration) {
  const hours = Math.floor(duration);
  const minutes = Math.floor((duration - hours) * 60);
  return {
    hours,
    minutes,
  };
}
