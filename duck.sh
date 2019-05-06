#!/bin/bash

main() {
    cd "$( dirname "${BASH_SOURCE[0]}" )"

    if [[ ! ./config ]]; then
        echo "ERROR: $(pwd)/config file is not found."
        return 1
    fi
    . config

    [[ -z "$TOKEN" ]] &&  {
        echo "ERROR: TOKEN was empty" >&2
        return 1
    }
    [[ -z "$LOG_DIR" ]] &&  {
        echo "ERROR: TOKEN was empty" >&2
        return 1
    }
    [[ -z "${#@}" ]] && {
        echo "Usage: $0 <your domain01> [<your domain02> ......]" >&2
        return 1
    }

    for duck_domain in $@
    do
        echo url="https://www.duckdns.org/update?domains=${duck_domain}&token=${TOKEN}&ip=" | curl -k -o ${LOG_DIR}/${duck_domain}_duckdns_org.log -K -
        sleep $(shuf -i1-5 -n1)
    done
}

main "$@" || exit 1

