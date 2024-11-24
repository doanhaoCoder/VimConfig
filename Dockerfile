# Sử dụng image Ubuntu 20.04 làm base image
FROM ubuntu:20.04

# Thiết lập biến môi trường để tránh việc hỏi các câu hỏi trong quá trình cài đặt
ENV DEBIAN_FRONTEND=noninteractive

# Cập nhật các package và cài đặt các phụ thuộc cần thiết
RUN apt-get update && apt-get install -y \
    curl \
    git \
    nodejs \
    npm \
    vim \
    python3 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt vim-plug cho Neovim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Thiết lập thư mục làm việc trong container
WORKDIR /root

# Sao chép cấu hình Neovim vào thư mục thích hợp trong container
COPY . /root

# Khởi động bash để làm việc trong container
CMD ["vim"]
