# Dell-precision5510-Catalina
* Laptop Spec
  * CPU: Quad-Core Intel Core i7-6820HQ @ 2.7GHz Sky Lake
  * Memory:16GB (2*8GB) DDR4 2133MHz SK Hynix
  * GPU:Intel HD Graphics 530(bios device name=\_SB.PCI0.GFX0) 
  * Nvidia Quadro M1000M (bios device name=\_SB.PCI0.PEG0.PEGP) 
  * Dksplay:15" LCD 3840 x 2160（2160p/4K UHD) SHP143E
  * WiFI: INtel Dual band Wireless-AC 8260 
  * Harddisk:THNSN5512GPU7 NVMe TOSHIBA 512GB
  * Audio: ALC298
* Working
  * Intel WiFi/bluetooth
  * HDMI
  * battery level/charge
  * HiDPI:done with https://github.com/xzhih/one-key-hidpi
  * USB:
  * internal Camera
  * sleep/wake
  * SD Card reader: https://github.com/cholonam/Sinetek-rtsx/ 
  * audio work well with layout id=72 but has problem on earphone, change to id=16 result in perfect earphone.
* Doesn't work/Not tested/Problem
  * 
  * Nvidia GPU: disabled through SSDT-DGPU.aml (\_SB.PCI0.PEG0.PEGP)
  * airdrop:
