#!/bin/bash

echo "=============================="
echo "Employee Application Health Check"
echo "=============================="

echo "Date: $(date)"

echo ""
echo "Checking employee_web service..."

SERVICE_STATUS=$(systemctl is-active employee_web)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "Service: RUNNING"
else
    echo "Service: NOT RUNNING"
fi

echo ""
echo "Checking port 8000..."

if ss -tuln | grep -q ":8000"; then
    echo "Port 8000: LISTENING"
else
    echo "Port 8000: NOT LISTENING"
fi
#!/bin/bash

echo "=============================="
echo "Employee Application Health Check"
echo "=============================="

echo "Date: $(date)"

echo ""
echo "Checking employee_web service..."

SERVICE_STATUS=$(systemctl is-active employee_web)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "Service: RUNNING"
else
    echo "Service: NOT RUNNING"
fi

echo ""
echo "Checking port 8000..."

if ss -tuln | grep -q ":8000"; then
    echo "Port 8000: LISTENING"
else
    echo "Port 8000: NOT LISTENING"
fi

#!/bin/bash

echo "=============================="
echo "Employee Application Health Check"
echo "=============================="

echo "Date: $(date)"

echo ""
echo "Checking employee_web service..."

SERVICE_STATUS=$(systemctl is-active employee_web)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "Service: RUNNING"
else
    echo "Service: NOT RUNNING"
fi

echo ""
echo "Checking port 8000..."

if ss -tuln | grep -q ":8000"; then
    echo "Port 8000: LISTENING"
else
    echo "Port 8000: NOT LISTENING"
fi

echo ""
echo "Checking application..."

if curl -s http://localhost:8000/health | grep -q "OK"; then
    echo "Application: HEALTHY"
else
    echo "Application: UNHEALTHY"
fi

echo ""
echo "=============================="
echo "Health Check Completed"
echo "=============================="
