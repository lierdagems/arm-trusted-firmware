# 介绍

这是来自st官方github上的TF-A源码, 假如你想要st最新的, 你
可以使用如下命令下载最新的源码

```
~$ git clone https://github.com/STMicroelectronics/arm-trusted-firmware.git
```

官方源码编译文档
https://wiki.st.com/stm32mpu/nsfr_img_auth.php/b/b9/TF-A.README.HOW_TO.txt

安装交叉编译器
=============
```
~$ sudo apt install gcc-arm-linux-gnueabi
```

编译
====
```
~$ source /opt/st/stm32mp1-demo-logicanalyser/2.6-snapshot/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi
~$ cd arm-trusted-firmware
~$ make -f ../Makefile.sdk TF_A_CONFIG=trusted TFA_DEVICETREE=stm32mp157c-dk2 all
```

烧写
====
```
~$ sudo dd if=tf-a-stm32mp157c-dk2-trusted.stm32 of=/dev/sdc1 
~$ sudo dd if=tf-a-stm32mp157c-dk2-trusted.stm32 of=/dev/sdc2 
```

注意
====
其中Makefike.sdk是在yocto里面拷贝出来的,  文件里面的makefile要换成本机的交叉编译链，这里是arm-ostl-linux-gnueabi-，编译完成后会在源码上级目录下生成一个build的文件夹,里边就有生成的tf-a-stm32mp157c-dk2-trusted.stm32
