FROM scratch
EXPOSE 8080
ADD bin/linux_amd64/ts /
CMD ["/ts"]
