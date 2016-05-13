################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/platform.c \
../src/xiicps_eeprom_intr_example.c \
../src/xiicps_rtc_intr_example.c \
../src/xiicps_selftest_example.c 

OBJS += \
./src/platform.o \
./src/xiicps_eeprom_intr_example.o \
./src/xiicps_rtc_intr_example.o \
./src/xiicps_selftest_example.o 

C_DEPS += \
./src/platform.d \
./src/xiicps_eeprom_intr_example.d \
./src/xiicps_rtc_intr_example.d \
./src/xiicps_selftest_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


