.PHONY: install clean show-paths alias unalias

# 🧩 Install multiple OpenJDK versions
install:
	@echo "Installing Java 8, 17, and 21 via APT..."
	sudo apt update -y
	sudo apt install -y openjdk-8-jdk openjdk-17-jdk openjdk-21-jdk
	$(MAKE) show-paths

# 📂 Show installation paths
show-paths:
	@echo "Java installations found in /usr/lib/jvm:"
	@ls /usr/lib/jvm | grep openjdk || echo "No OpenJDK installations found"
	@echo
	@echo "Java 8 path:"
	@echo "/usr/lib/jvm/java-8-openjdk-amd64"
	@echo "Java 17 path:"
	@echo "/usr/lib/jvm/java-17-openjdk-amd64"
	@echo "Java 21 path:"
	@echo "/usr/lib/jvm/java-21-openjdk-amd64"

# ⚙️ Print alias instructions
alias:
	@echo "🔧 Registering all installed Java versions with update-alternatives..."
	@sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8-openjdk-amd64/bin/java 1081 || true
	@sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac 1081 || true
	@sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 1101 || true
	@sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac 1101 || true
	@sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 1111 || true
	@sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-21-openjdk-amd64/bin/javac 1111 || true
	@echo "✅ Registration complete!"
	@echo "🔍 Use 'sudo update-alternatives --config java' to view and switch manually."

# 🚫 Unalias (for current session only)
unalias:
	@echo "Removing aliases java8, java17, java21 from current shell..."
	unalias java8 2>/dev/null || echo "java8 alias not found"
	unalias java17 2>/dev/null || echo "java17 alias not found"
	unalias java21 2>/dev/null || echo "java21 alias not found"

# 🧹 Clean: uninstall JDKs
clean:
	@echo "Uninstalling Java 8, 17, and 21..."
	sudo apt remove --purge -y openjdk-8-jdk openjdk-17-jdk openjdk-21-jdk || true
	sudo apt autoremove -y
