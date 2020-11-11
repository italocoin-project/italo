set -ex && mkdir -p build/release/bin
set -ex && docker create --name italo-daemon-container italo-daemon-image
set -ex && docker cp italo-daemon-container:/usr/local/bin/ build/release/
set -ex && docker rm italo-daemon-container
