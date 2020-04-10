FROM scratch

LABEL maintainer=Crazygit
LABEL homepage="https://github.com/crazygit/openwrt-x86-64"

ARG FIRMWARE
# FIRMWARE 使用远程的URL地址的.tar.gz包时不会自动解压，因此只能添加本地文件
ADD ${FIRMWARE} /

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
