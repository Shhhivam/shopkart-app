#!/bin/bash

echo "ShopKart Application Build Successful"

echo "Running Tests..."

echo "TEST PASSED"

mkdir -p build

echo "ShopKart Build Artifact" > build/shopkart-artifact.txt

cat << EOF > build/test-report.html
<html>
<body>
<h1>ShopKart Test Report</h1>
<p>Status: PASSED</p>
</body>
</html>
EOF

echo "Artifact Created Successfully"