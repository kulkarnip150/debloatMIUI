import time
import pyautogui
import os

startTime = time.time()
with open("debloatmiui.txt") as f:
    lines = [line.rstrip() for line in f]
# print(lines)
time.sleep(1)
os.system("start")
time.sleep(2)
pyautogui.write("adb devices", interval=0.02)
pyautogui.press("enter")
time.sleep(1)
pyautogui.write("adb shell", interval=0.02)
pyautogui.press("enter")
for i in lines:
    time.sleep(2)
    print(i)
    pyautogui.write(i, interval=0.01)
    pyautogui.press("enter")
pyautogui.write("exit")
pyautogui.press("enter")
print("device will reboot in 2 sec")
time.sleep(2)
pyautogui.write("adb reboot", interval=0.01)
pyautogui.press("enter")
endTime = time.time()
print(f"Total time {endTime - startTime}")
