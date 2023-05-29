# EDK2 UEFI Firmware For Snapdragon 835 (msm8998)

- A broken but working EDK2 implementation for Snapdragon 835 platform.

- 中国人请看中文版
[Chinese version (中文版)](https://github.com/edk2-porting/edk2-msm8998/blob/master/README.zh.md)

## Warning
- Starting with build 25188 ARMv8.1 Atomics are now required. Build 25169 to 25183 will BSOD on boot (KMODE_EXCEPTION_NOT_HANDLED). 
- Builds 25163 and earlier will successfully boot.

- **DO NOT EVER TRY TO PORT IT TO *SONY, SAMSUNG* DEVICES**

- **YOUR UFS WILL BE WIPED CLEAN!!!**

## Supported devices

| Device                   | Target name            | ACPI Support	|
|--------------------------|------------------------|---------------|
| OnePlus 5                | cheeseburger           | ✅            |
| OnePlus 5T               | dumpling               | ✅            |
| LG V30                   | joan                   | ✅            |
| Xiaomi Mi6               | sagit                  | ✅            |
| Xiaomi Mi Mix 2          | chiron                 | ✅            |
| Essential Phone PH-1     | mata                   | ✅            |
| HTC U11+                 | htc_ocmdtwl            | ❌            |

## Supported devices

[Windows Status Matrix](https://renegade-project.org/#/en/windows/state-frame.html)

## Resources

[Telegram group (recommended)](https://t.me/joinchat/MNjTmBqHIokjweeN0SpoyA)

[Discord group](https://discord.gg/XXBWfag)

[Project website](https://renegade-project.tech/)

## Dependencies

Compiling has been tested on Debian 11 (bullseye) and on Ubuntu 20.04 LTS.

For Ubuntu 20.04:

```bash
sudo apt update
sudo apt upgrade
sudo apt install build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu abootimg python3-distutils python3-pil python3-git gettext
```

## Building

1.Clone this project 

```bash
git clone https://github.com/edk2-porting/edk2-msm8998.git
cd edk2-msm8998
```

2.Build this project

```bash
bash build.sh --device DEVICE
```

3.Boot the image

```bash
fastboot boot boot_DEVICE.img
```

(DEVICE is the codename of your phone.)

## Acknowledgements
- [Gustave Monce](https://github.com/gus33000) and his [SurfaceDuoPkg](https://github.com/WOA-Project/SurfaceDuoPkg) and [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg)
- [WOA-Project](https://github.com/WOA-Project)
- [EFIDroid](https://github.com/efidroid)
- [Ben (Bingxing) Wang](https://github.com/imbushuo/)
- [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg)
- BigfootACA and his [SimpleInit](https://github.com/BigfootACA/simple-init) and [LinuxSimpleMassStorage](https://github.com/BigfootACA/linux-simple-mass-storage)
- fxsheep and his original edk2-sagit
- All the developers and members of [Renegade Project](https://github.com/edk2-porting/) for offering efforts, equipments, valuable documents and more
