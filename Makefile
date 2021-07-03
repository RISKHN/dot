DATA = etc:/usr/etc config:/home/$(USER)/.config share:/home/$(USER)/.local/share bin:/home/$(USER)/.local/bin

install:
	for data in ${DATA} ; do \
		echo "creating $$(echo $$data | cut -d ':' -f 2) directory"; \
		mkdir -p $$(echo $$data | cut -d ":" -f 2) ; \
		echo "linking $$(echo $$data | cut -d ':' -f 1) to $$(echo $$data | cut -d ':' -f 2)"; \
		stow -p $$(echo $$data | cut -d ":" -f 1) -t $$(echo $$data | cut -d ":" -f 2) ; \
	done

uninstall:
	for data in ${DATA} ; do \
		echo "removing link $$(echo $$data | cut -d ':' -f 1) to $$(echo $$data | cut -d ':' -f 2)"; \
		stow -D $$(echo $$data | cut -d ":" -f 1) -t $$(echo $$data | cut -d ":" -f 2) ; \
	done
