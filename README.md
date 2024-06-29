# qemu-config-template

本项目提供了一些qemu启动虚拟机的配置文件的模板和一个启动qemu的lua脚本，脚本执行依赖[luaByCMake](https://github.com/ThankVinci/luaByCMake)中的和[lua_utils](https://github.com/ThankVinci/lua_utils)这两个项目中的模块。

本项目唯一的作用就是将json配置文件读取为lua的table，然后通过`tblfmt`格式化输出成qemu启动的命令行。

使用方法：

1. 拉取或者下载[luaByCMake](https://github.com/ThankVinci/luaByCMake)源代码执行**项目根目录的构建脚本**完成编译和安装，将**项目根目录/installed**中的**lua5.4.6**文件夹复制到本机的软件安装目录或者其他目录，并将**安装目录/lua5.4.6/bin**添加到环境变量，而如果已经安装过lua5.4.6的话，可以全部替换，也可以单独将**项目根目录/installed/构建平台/lua5.4.6/lib/lua/5.4**下的全部模块复制到**安装目录**下的同级位置；
2. 拉取或者下载[lua_utils](https://github.com/ThankVinci/lua_utils)，将其中**common**和**advance**目录下的脚本文件（不包含文件夹）全部复制到**安装目录/lua5.4.6/share/lua/5.4**中；

这样就对lua环境完成了配置，使用lua运行run.lua脚本应该就可以启动qemu。

