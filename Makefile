# Makefile

# Set the execute permissions for .sh files
# chmod +x ./bin/linux.sh
# chmod +x ./bin/cleanup.sh

# Define linux target with dependency on clean target
linux: clean
	./bin/linux.sh

# Define clean target
clean:
	./bin/cleanup.sh
