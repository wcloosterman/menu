# Monitor Settings - 20 Minutes
Powercfg /Change monitor-timeout-ac 60

# Sleep Settings - 5 Hours
Powercfg /Change standby-timeout-ac 300

# Disable USB Selective Suspend
powercfg /SETACVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0

# Make powerscheme active immediately
powercfg /setactive scheme_current
