# For unlocking the phone screen
adb shell input keyevent 26

# Swipe for unlocking phone
adb shell input swipe 398 969 745.5 946.5

# Initializing the Sip Dialer application on the cellular device
adb shell am start -n com.csipsimple/com.csipsimple.ui.SipDialer

# Initializing the prompt to the name entry tab
adb shell input keyevent 20

# Inputting the contact name to dial -- name is passed as an argument from command line
adb shell input text "$1"


# Tapping the call button to receive a call
adb shell input tap 421.5 1000.5

# Sleep initiate
sleep 1

# To switch on the speaker
adb shell input tap 39.0 1142.5

# Sleep initiate to talk
sleep 5

# Tapping the end call button to terminate a call
adb shell input tap 405.0 966.5

sleep 1

# To go back to home
adb shell input keyevent 4
adb shell input keyevent 4

# For locking the phone screen
adb shell input keyevent 26

