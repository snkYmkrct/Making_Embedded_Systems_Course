################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Consolinator/console.c \
../Core/Src/Consolinator/consoleCommands.c \
../Core/Src/Consolinator/consoleIo.c 

OBJS += \
./Core/Src/Consolinator/console.o \
./Core/Src/Consolinator/consoleCommands.o \
./Core/Src/Consolinator/consoleIo.o 

C_DEPS += \
./Core/Src/Consolinator/console.d \
./Core/Src/Consolinator/consoleCommands.d \
./Core/Src/Consolinator/consoleIo.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Consolinator/%.o Core/Src/Consolinator/%.su: ../Core/Src/Consolinator/%.c Core/Src/Consolinator/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Consolinator

clean-Core-2f-Src-2f-Consolinator:
	-$(RM) ./Core/Src/Consolinator/console.d ./Core/Src/Consolinator/console.o ./Core/Src/Consolinator/console.su ./Core/Src/Consolinator/consoleCommands.d ./Core/Src/Consolinator/consoleCommands.o ./Core/Src/Consolinator/consoleCommands.su ./Core/Src/Consolinator/consoleIo.d ./Core/Src/Consolinator/consoleIo.o ./Core/Src/Consolinator/consoleIo.su

.PHONY: clean-Core-2f-Src-2f-Consolinator

