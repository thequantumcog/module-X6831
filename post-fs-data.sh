
if getprop ro.vendor.build.fingerprint | grep -iq -e infinix/x6831; then
  setprop ro.vendor.transsion.backlight_hal.optimization 1
fi
