@echo off
echo "Stopping any current Hosted Network!"
netsh wlan stop hostednetwork
echo "Setting up Hosted Network!"
netsh wlan set hostednetwork mode=allow ssid=WSBlind-LBC key=TestTest#0123!
echo "Starting Hosted Network"
netsh wlan start hostednetwork
pause