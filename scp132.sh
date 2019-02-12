#!/usr/bin/expect -f

set prompt {[#|>|$] }
spawn /usr/bin/scp [lindex $argv 0] andyyuan@172.16.69.132:/home/fsa/disk2/nfs/GitLabFileServer/andyyuan/[lindex $argv 1]

set timeout 150
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
		send -- "nauy2019\r"
		expect {
			"denied" {
				puts "Password incorrect."
				exit 1
			}
		}
	}
	eof {
		exit 1
	}
}

