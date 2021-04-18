import { getChargingCost, getChargingTime, getRangeAtPercentage } from "../car";
import { KSA_VOLT_110, KSA_VOLT_220, getWatt, getKwatt } from "../power";
import { convertHoursDurationToHuman } from "../time";

const SELECTED_CLASS = ["ring-8", "ring-red-700", "ring-opacity-50"];

export default {
  mounted() {
    this.powerButton220 = document.getElementById("220V");
    this.powerButton110 = document.getElementById("110V");
    this.carName = document.getElementById("car-name");
    this.startingSoc = document.getElementById("starting-soc");
    this.startingSocRange = document.getElementById("starting-soc-range");
    this.watt = document.getElementById("watt");
    this.chargingTime = document.getElementById("charging-time");
    this.targetSoc = document.getElementById("target-soc");
    this.targetSocRange = document.getElementById("target-soc-range");
    this.cost = document.getElementById("cost");

    this.startingSocValue = 20;
    this.targetSocValue = 80;
    this.car = JSON.parse(this.el.dataset.car);

    this.carName.innerHTML = this.car.name;
    this.startingSoc.innerHTML = `${this.startingSocValue}%`;
    this.startingSocRange.innerHTML = `${getRangeAtPercentage(
      this.car,
      this.startingSocValue
    )}km`;
    this.targetSoc.innerHTML = `${this.targetSocValue}%`;
    this.targetSocRange.innerHTML = `${getRangeAtPercentage(
      this.car,
      this.targetSocValue
    )}km`;
    this.cost.innerHTML = `SAR ${Math.floor(
      getChargingCost({
        car: this.car,
        startingPercent: this.startingSocValue,
        targetPercent: this.targetSocValue,
      })
    )}`;

    this.updateResult({ selected: KSA_VOLT_220 });

    this.powerButton220.addEventListener("click", () => {
      this.updateResult({ selected: KSA_VOLT_220 });
    });

    this.powerButton110.addEventListener("click", () => {
      this.updateResult({ selected: KSA_VOLT_110 });
    });
  },

  updateResult({ selected }) {
    if (selected.volt === KSA_VOLT_220.volt) {
      this.powerButton220.classList.add(...SELECTED_CLASS);
      this.powerButton110.classList.remove(...SELECTED_CLASS);
    } else {
      this.powerButton110.classList.add(...SELECTED_CLASS);
      this.powerButton220.classList.remove(...SELECTED_CLASS);
    }
    this.watt.innerHTML = `${getWatt(selected)} watts`;
    this.chargingTime.innerHTML = convertHoursDurationToHuman(
      getChargingTime({
        car: this.car,
        startingPercent: this.startingSocValue,
        targetPercent: this.targetSocValue,
        power: getKwatt(getWatt(selected)),
      })
    );
  },
};
