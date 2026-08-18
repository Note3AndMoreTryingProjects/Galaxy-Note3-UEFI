#!/bin/bash
echo "=== 1. Instalez uneltele pe Fedora ==="
sudo dnf install -y gcc-arm-linux-gnu binutils-arm-linux-gnu make uuid-devel acpica-tools git gcc-c++

echo "=== 2. Descarc automat dependintele UEFI ==="
if [ ! -d "edk2" ]; then
    git clone --depth 1 https://github.com
fi

echo "=== 3. Compilez tabelele ACPI (DSDT) ==="
/usr/bin/iasl -tc dsdt.asl

echo "=== 4. Pregatesc compilatorul ARM ==="
export GCC5_ARM_PREFIX=arm-linux-gnu-

cd edk2
make -C BaseTools
source edksetup.sh
cd ..

echo "=== 5. Generez imaginea UEFI finala pentru Note 3 ==="
./edk2/BaseTools/Source/C/bin/build -a ARM -p Note3Device.dsc -t GCC5
