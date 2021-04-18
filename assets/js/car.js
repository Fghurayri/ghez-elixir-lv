import {
  getBatteryCapacityToBeFilled,
  calculateChargingCost,
  calculateChargingTime,
} from "./charging";
import { getKwatt, getWatt } from "./power";

export function getRangeAtPercentage(car, percentage) {
  const { range_in_km } = car;
  return Math.floor((percentage / 100) * range_in_km);
}

export function getEfficiency(car) {
  const { range_in_km, battery_size } = car;
  return Math.floor(battery_size / range_in_km);
}

export function getChargingCost({ car, startingPercent, targetPercent }) {
  const { battery_size: totalCapacity } = car;
  const batteryCapacity = getBatteryCapacityToBeFilled({
    targetPercent,
    startingPercent,
    totalCapacity,
  });
  return calculateChargingCost(batteryCapacity);
}

export function getChargingTime({
  car,
  startingPercent,
  targetPercent,
  power,
}) {
  const { battery_size: totalCapacity } = car;
  const batteryCapacity = getBatteryCapacityToBeFilled({
    targetPercent,
    startingPercent,
    totalCapacity,
  });
  return calculateChargingTime({ loadPowerInKwh: power, batteryCapacity });
}
