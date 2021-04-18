export const KSA_VOLT_220 = { volt: 220, amp: 13 };
export const KSA_VOLT_110 = { volt: 110, amp: 15 };

export function getWatt({ volt, amp }) {
  return volt * amp;
}

export function getKwatt(watt) {
  return watt / 1000;
}
