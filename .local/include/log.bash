function tlog() {
	tail -f "$1" | \
	awk '{now=strftime("%T >> "); sub(/^/, now); print}';
}

