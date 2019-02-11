#!/usr/bin/expect -f

set prompt {[#|>|$] }
spawn /usr/bin/ssh-keygen -f "/home/[exec whoami]/.ssh/known_hosts" -R [lindex $argv 0]
spawn /usr/bin/ssh admin@[lindex $argv 0]

set timeout 5
expect {
	timeout {
		puts "Connection timed out"
		exit 1
	}

	"yes/no" {
		send "yes\r"
		exp_continue
	}

	"assword:" {
		send -- "[lindex $argv 1]\r"
		expect {
			"denied" {
				puts "Password incorrect."
				exit 1
			}
		"$prompt" {
			send "status\r"
			expect "$prompt"
			send "\r"
			send "vm-vnc -e\r"
			expect "$prompt"
			send "fnsysctl shell\r"
			expect "sername: "
			send "fsa_support\r"
			expect "assword: "
			send "Support@FSA1\r"
			expect "$prompt"
			send "PS1='\\u@\\h\\w\\$ '\r"
			expect "$prompt"
			send "alias ll='ls -alF'\r"
			}
		}
	}
	eof {
		exit 1
	}
}

interact
