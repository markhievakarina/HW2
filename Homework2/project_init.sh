#!/bin/bash
if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi
mkdir -p "$1"/{data,scripts,results}
touch "$1/data/raw_data.txt"
chmod 600 "$1/data/raw_data.txt"
cat > "$1/scripts/run_analysis.sh" << 'INNER'
#!/bin/bash
echo "Hello from $1"
INNER
chmod +x "$1/scripts/run_analysis.sh"
