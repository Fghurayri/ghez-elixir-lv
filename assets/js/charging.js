const CHARGING_EFFICIENCY = 0.9;
const KWH_RATE_IN_HALLAH = 0.16;

export function getBatteryCapacityToBeFilled({
  targetPercent,
  startingPercent,
  totalCapacity,
}) {
  return ((targetPercent - startingPercent) / 100) * totalCapacity;
}

export function calculateChargingTime({ loadPowerInKwh, batteryCapacity }) {
  return batteryCapacity / (loadPowerInKwh * CHARGING_EFFICIENCY);
}

export function calculateChargingCost(batteryCapacityToBeFilled) {
  return batteryCapacityToBeFilled * KWH_RATE_IN_HALLAH;
}
