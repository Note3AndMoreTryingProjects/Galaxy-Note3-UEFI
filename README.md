# Galaxy-Note3-uefi

This is an experimental, open-source project to compile a UEFI boot environment (Tianocore EDK2) for the Samsung Galaxy Note 3 (Qualcomm Snapdragon 800 / SM-N9005). 

The project uses 32-bit ACPI tables and structures inspired by the Nokia Lumia 2520 to bridge the hardware gap and make booting alternative operating systems possible on this legacy device.

## 🚀 How to Compile

To generate the UEFI image on Fedora or any other Linux distribution (including WSL on Windows), download these repository files to a single folder, open your terminal, and run:

```bash
chmod +x build.sh
./build.sh
```

The script will automatically attempt to install the necessary toolchains (`gcc-arm`), compile the ACPI tables (`dsdt.asl`), and trigger the EDK2 build system.

## 🧪 Community Call to Action / Testing

This project is currently in an early **Alpha/Experimental** stage. 

If you have spare time and the hardware on hand, please feel free to test booting:
* **Windows RT 8.1 (ARM32)**
* **Windows 10 Mobile / Windows 10 ARM32**
* **Linux (PostmarketOS / Ubuntu Touch)**

Any pull requests regarding ACPI table updates or custom drivers (Touchscreen, USB-OTG, Battery PMIC stabilization) are highly welcome!
