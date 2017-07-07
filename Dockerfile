FROM quay.io/ukhomeofficedigital/nodejs-base:v6.9.1

RUN yum install -y bzip2
RUN yum install -y fontconfig
COPY google-chrome.repo /etc/yum.repos.d/
RUN yum install -y gnu-free-sans-fonts
RUN yum install -y google-chrome-stable
RUN yum install -y xorg-x11-server-Xvfb
RUN Xvfb -ac :99 -screen 0 1680x1050x24 &
RUN export DISPLAY=:99
