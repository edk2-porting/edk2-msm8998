# 骁龙835(MSM8998)的EDK2 UEFI固件

**在编译该项目前，请确定你有一定的Linux常识，以下步骤已经是最简单的方法，如果你看不懂，那么请使用Releases中的编译成品**

## 警告
- 从内部版本 25188 开始，现在需要 ARMv8.1 。内部版本 25169 到 25183 将在启动时出现蓝屏 （KMODE_EXCEPTION_NOT_HANDLED）
- 内部版本 25163 及更早版本将成功启动。

- **请勿尝试移植到任何索尼和谷歌设备上**

- **你的UFS会被清空!!!**

## 已支持的设备

| 设备                     | Target name            | ACPI Support	|
|--------------------------|------------------------|---------------|
| 一加 5                   | cheeseburger           | ✅            |
| 一加 5T                  | dumpling               | ✅            |
| LG V30                   | joan                   | ✅            |
| 小米 Mi6                 | sagit                  | ✅            |
| 小米 Mi Mix 2            | chiron                 | ✅            |
| Essential Phone PH-1     | mata                   | ✅            |
| HTC U11+                 | htc_ocmdtwl            | ❌            |

## 支持的设备

[Windows Status Matrix](https://renegade-project.org/#/en/windows/state-frame.html)


## 资源

[Telegram英语交流群](https://t.me/joinchat/MNjTmBqHIokjweeN0SpoyA)

[Discord英语交流群](https://discord.gg/XXBWfag)

[项目官网](https://renegade-project.tech/)

## 依赖

Ubuntu 20.04:

```bash
sudo apt update
sudo apt upgrade
sudo apt install build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu abootimg python3-distutils python3-pil python3-git gettext
```

## 构建

**不建议使用Ubuntu 18.04版本，请使用Ubuntu 20.04或以上版本**

1.克隆此项目（默认使用国内镜像加速）

```bash
git clone https://hub.nuaa.cf/edk2-porting/edk2-msm8998.git
cd edk2-msm8998
```

2.编译此项目（默认使用国内镜像加速submodule克隆，若不需要请删去 `--chinese`）

```bash
bash build.sh --chinese --device DEVICE
```

3.启动镜像

```bash
fastboot boot boot_DEVICE.img
```

(请将DEVICE替换成你的设备代号.)

## 致谢
- [Gustave Monce](https://github.com/gus33000) and his [SurfaceDuoPkg](https://github.com/WOA-Project/SurfaceDuoPkg) and [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg)
- [WOA-Project](https://github.com/WOA-Project)
- [EFIDroid](https://github.com/efidroid)
- [Ben (Bingxing) Wang](https://github.com/imbushuo/)
- [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg)
- BigfootACA and his [SimpleInit](https://github.com/BigfootACA/simple-init) and [LinuxSimpleMassStorage](https://github.com/BigfootACA/linux-simple-mass-storage)
- fxsheep and his original edk2-sagit
- All the developers and members of [Renegade Project](https://github.com/edk2-porting/) for offering efforts, equipments, valuable documents and more

