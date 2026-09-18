import time
from datetime import datetime

print("Employee Service Started")

while True:
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"Employee service is running - {current_time}", flush=True)
    time.sleep(10)
