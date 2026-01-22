# ===== Compiler & flags =====
CC      := clang
CFLAGS  := -Wall -Wextra -Wpedantic -std=c11 -Iinclude -O2
LDFLAGS :=

# ===== Directories =====
SRC_DIR   := src
BUILD_DIR := build
BIN_DIR   := bin

# ===== Files =====
SRC     := $(wildcard $(SRC_DIR)/*.c) # Source code
OBJ     := $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRC)) # Object files
TARGET  := $(BIN_DIR)/msmon # Executable 

# ===== Default target =====
all: $(TARGET)

# ===== Link =====
$(TARGET): $(OBJ)
	@mkdir -p $(BIN_DIR)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

# ===== Compile =====
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# ===== Clean =====
clean:
	rm -rf $(BUILD_DIR)/* $(BIN_DIR)/*

# ===== Rebuild =====
rebuild: clean all

.PHONY: all clean rebuild
