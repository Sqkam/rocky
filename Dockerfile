FROM rockylinux:9

# 安装 Shellinabox
RUN dnf update -y && \
    dnf install -y openssh-server && \
   

# 设置 root 用户的密码为 'root'
RUN cat >passwd <eof 
111111
111111
eof

# 暴露 22 端口
EXPOSE 22

# 启动 Shellinabox
CMD ["/usr/sbin/sshd"]
