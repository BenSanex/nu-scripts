def docker-list [] {
	docker ps --format "{{json .}}" | lines | str join ',' | str trim | $"[($in)]" | from json | select Names CreatedAt Status Ports
}
