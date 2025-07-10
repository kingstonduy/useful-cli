.PHONY: install clean show-paths alias unalias

install:
	@echo "Installing Java 8, 17, and 21 via Homebrew..."
	brew install openjdk@8 || true
	brew install openjdk@17 || true
	brew install openjdk@21 || true
	$(MAKE) show-paths
	

show-paths:
	@echo "Java 8 installed at:"
	@brew --prefix openjdk@8 || echo "openjdk@8 not installed"
	@echo "Java 17 installed at:"
	@brew --prefix openjdk@17 || echo "openjdk@17 not installed"
	@echo "Java 21 installed at:"
	@brew --prefix openjdk@21 || echo "openjdk@21 not installed"

alias:
	@echo "Add these aliases to your shell configuration (~/.zshrc):"
	@echo
	@echo "alias java8='export JAVA_HOME=\$$(brew --prefix openjdk@8); export PATH=\$$JAVA_HOME/bin:\$$PATH; echo \"Switched to Java 8\"; java -version'"
	@echo "alias java17='export JAVA_HOME=\$$(brew --prefix openjdk@17); export PATH=\$$JAVA_HOME/bin:\$$PATH; echo \"Switched to Java 17\"; java -version'"
	@echo "alias java21='export JAVA_HOME=\$$(brew --prefix openjdk@21); export PATH=\$$JAVA_HOME/bin:\$$PATH; echo \"Switched to Java 21\"; java -version'"

unalias:
	@echo "Removing aliases java8, java17, java21 from current session..."
	unalias java8 || echo "java8 alias not found"
	unalias java17 || echo "java17 alias not found"
	unalias java21 || echo "java21 alias not found"

clean:
	@echo "Uninstalling Java 8, 17, and 21..."
	brew uninstall openjdk@8 || echo "openjdk@8 not installed"
	brew uninstall openjdk@17 || echo "openjdk@17 not installed"
	brew uninstall openjdk@21 || echo "openjdk@21 not installed"
