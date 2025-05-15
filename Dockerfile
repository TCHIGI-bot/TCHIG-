FROM ubuntu:20.04

# تثبيت التحديثات والحزم اللازمة
RUN apt-get update && apt-get install -y \
    lib32gcc-s1 \
    && rm -rf /var/lib/apt/lists/*

# إنشاء مجلد للسيرفر
WORKDIR /samp

# نسخ ملفات السيرفر إلى الحاوية
COPY . /samp

# تعيين المنفذ
EXPOSE 7777/udp

# أمر التشغيل
CMD ["./samp03svr"]
