#!/usr/bin/env bash

cpu_usage=$(awk '
/^cpu / {
  user=$2; nice=$3; system=$4; idle=$5; iowait=$6; irq=$7; softirq=$8; steal=$9
  idle_all = idle + iowait
  non_idle = user + nice + system + irq + softirq + steal
  total = idle_all + non_idle
  if (prev_total == 0) {
    prev_total = total
    prev_idle = idle_all
    exit
  }
  totald = total - prev_total
  idled = idle_all - prev_idle
  if (totald > 0) {
    printf "%d", (100 * (totald - idled) / totald)
  } else {
    printf "0"
  }
  exit
}
' /proc/stat)

# If first run, previous awk exits early; fall back to 0
if [ -z "$cpu_usage" ]; then
  sleep 0.2
  read -r t1 i1 <<< "$(awk '/^cpu / {idle=$5; total=$2+$3+$4+$5+$6+$7+$8+$9; print total, idle}' /proc/stat)"
  sleep 0.2
  read -r t2 i2 <<< "$(awk '/^cpu / {idle=$5; total=$2+$3+$4+$5+$6+$7+$8+$9; print total, idle}' /proc/stat)"
  total_diff=$((t2 - t1))
  idle_diff=$((i2 - i1))
  if [ "$total_diff" -gt 0 ]; then
    cpu_usage=$((100 * (total_diff - idle_diff) / total_diff))
  else
    cpu_usage=0
  fi
fi

temp=$(sensors 2>/dev/null | awk '
/Package id 0:/ {print $4; exit}
/Tctl:/ {print $2; exit}
/Core 0:/ {print $3; exit}
/CPU Temperature:/ {print $3; exit}
')

if [ -z "$temp" ]; then
  temp="N/A"
else
  temp=${temp%°C}
fi

freq=$(awk -F: '/cpu MHz/ {printf "%.2f", $2/1000; exit}' /proc/cpuinfo)
[ -z "$freq" ] && freq="0.00"

echo "{\"text\":\"${freq}GHz | ${cpu_usage}% | ${temp}°C\",\"tooltip\":\"CPU Frequency: ${freq}GHz\\nCPU Usage: ${cpu_usage}%\\nCPU Temp: ${temp}°C\"}"
