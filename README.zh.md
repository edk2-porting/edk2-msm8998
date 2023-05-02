# 骁龙835(MSM8998)的EDK2 UEFI固件

**在编译该项目前，请确定你有一定的Linux常识，以下步骤已经是最简单的方法，如果你看不懂，那么请使用Releases中的编译成品**

## 警告
- **22H2是ARMv8.0系统的终点，高通835也受到影响，这意味着Windows将不再在更高版本中启动**
- **请勿尝试移植到任何索尼和谷歌设备上**

- **你的UFS会被清空!!!**

## 资源

[Telegram英语交流群](https://t.me/joinchat/MNjTmBqHIokjweeN0SpoyA)

[Discord英语交流群](https://discord.gg/XXBWfag)

[项目官网](https://renegade-project.tech/)

## 已支持的设备

| 设备                | Target name            |
|---------------------|------------------------|
| 一加 5              | cheeseburger           |
| 一加 5T             | dumpling               |
| LG V30              | joan                   |
| 小米 Mi6            | sagit                  |
| 小米 Mi Mix 2       | chiron                 |

## 依赖

Ubuntu 20.04:

```bash
sudo apt update
sudo apt upgrade
sudo apt install build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu abootimg python3-distutils python3-pil python3-git gettext
```

## 构建

**不建议使用Ubuntu 18.04版本，请使用Ubuntu 20.04或以上版本**

1.克隆此项目（默认使用国内fastgit镜像加速）

```bash
git clone https://hub.fastgit.org/edk2-porting/edk2-msm8998.git --depth=1
cd edk2-msm8998
```

2.编译此项目（默认使用fastgit加速submodule克隆，若不需要请删去 `--chinese`）

```bash
bash build.sh --chinese --device DEVICE
```

3.启动镜像

```bash
fastboot boot boot_DEVICE.img
```

(请将DEVICE替换成你的设备代号.)

## 贡献
