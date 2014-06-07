# Swiping the screen to answer the incoming call
adb shell input swipe 398 969 745.5 946.5

# To switch on the speaker
adb shell input tap 39.0 1142.5

# Initiate sleep
sleep 10

# Tapping the end call button to terminate a call
adb shell input tap 405.0 966.5

# To go back to home
adb shell input keyevent 4
adb shell input keyevent 4

# For locking the phone screen
adb shell input keyevent 26


