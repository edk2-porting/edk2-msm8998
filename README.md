# EDK2 UEFI Firmware For Snapdragon 835 (msm8998)

- A broken but working EDK2 implementation for Snapdragon 835 platform.

- 中国人请看中文版
[Chinese version (中文版)](https://github.com/edk2-porting/edk2-msm8998/blob/master/README.zh.md)

## WARNING
- **Since Windows 22H2 discontinued support for ARMv8.0 CPU, MSM8998 is also affected, which means after version 22H2 it is possible not to boot up.**

- **DO NOT EVER TRY TO PORT IT TO *SONY, SAMSUNG* DEVICES**

- **YOUR UFS WILL BE WIPED CLEAN!!!**


## Resources

[Telegram group (recommended)](https://t.me/joinchat/MNjTmBqHIokjweeN0SpoyA)

[Discord group](https://discord.gg/XXBWfag)

QQ chinese group: 697666196 (Main group, full)  996450026 (Second group)  737223105 (Linux/edk2)

[Project website](https://renegade-project.org/)

[Project forum](https://forum.renegade-project.org/)

## Supported devices

1. Xiaomi Mi Mix 2   (chiron) 
2. Xiaomi Mi6    (sagit)
3. LG V30        (joan)
4. OnePlus 5T   (dumpling)
5. OnePlus 5    (cheeseburger)

## Supported devices

[Windows Status Matrix](https://renegade-project.org/#/en/windows/state-frame.html)

## Dependencies

Compiling has been tested on Debian 11 (bullseye) and on Ubuntu 20.04 LTS.

For Ubuntu 20.04:

```bash
sudo apt update
sudo apt upgrade
sudo apt install build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu abootimg python3-distutils python3-pil python3-git gettext
```

If you are using GCC 11+, modify `edk2/BaseTools/Source/C/Makefiles/header.makefile`

```diff
diff --git a/BaseTools/Source/C/Makefiles/header.makefile b/BaseTools/Source/C/Makefiles/header.makefile
index 0df728f..247c917 100644
--- a/BaseTools/Source/C/Makefiles/header.makefile
+++ b/BaseTools/Source/C/Makefiles/header.makefile
@@ -92,7 +92,7 @@ BUILD_CFLAGS = -MD -fshort-wchar -fno-strict-aliasing -fwrapv \
 -Wno-unused-result -nostdlib -g
 else
 BUILD_CFLAGS = -MD -fshort-wchar -fno-strict-aliasing -fwrapv \
--fno-delete-null-pointer-checks -Wall -Werror \
+-fno-delete-null-pointer-checks -Wall \^M
 -Wno-deprecated-declarations -Wno-stringop-truncation -Wno-restrict \
 -Wno-unused-result -nostdlib -g
 endif
```

## Building

1.Clone this project 

```bash
git clone https://github.com/edk2-porting/edk2-msm8998.git --depth=1
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

## Credits



