install:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt install openjdk-17-jdk openjdk-17-jre
	java -version
	echo 'public class Main { public static void main(String[] args) { System.out.println("Hello World"); } }' > Main.java
	javac Main.java
	java Main

uninstall:
	sudo apt remove --purge openjdk-17-jdk openjdk-17-jre
	sudo apt autoremove --purge
	sudo rm -rf /usr/lib/jvm/java-17-openjdk*
	sudo rm -rf /etc/java-17-openjdk	

