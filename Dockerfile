FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
	build-essential \
	libgtk-3-0 \
	libnotify4 \
	libnss3 \
	xdg-utils \
	libatspi2.0-0 \
	libdrm2 \
	libgbm1 \
	libxcb-dri3-0 \
	kde-cli-tools \
	kde-runtime \
	trash-cli \
	libglib2.0-bin \
	gvfs-bin \
	wget

WORKDIR /app
COPY frame0_1.0.0~beta.17_amd64.deb /app
RUN dpkg -i frame0_1.0.0~beta.17_amd64.deb 

CMD ["frame0", "--no-sandbox"]
