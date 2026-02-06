eck_service() {
		service name=$1
			service is-active $1 >/dev/null 2>&1
				if [$? -eq 0]; then
							echo "service $1 is running"
								else
											echo "service $1 is not running"
												fi
											}
											check_service
