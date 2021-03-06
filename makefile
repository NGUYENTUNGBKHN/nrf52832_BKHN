PROJECT_NAME     := template
TARGETS          := nrf52832
OUTPUT_DIRECTORY := _build

SDK_ROOT := .
PROJ_DIR := ./src

$(OUTPUT_DIRECTORY)/$(TARGETS).out: \
  LINKER_SCRIPT  := nrf52.ld

# Source files common to all targets
SRC_FILES += \
  $(SDK_ROOT)/lib/libraries/experimental_log/src/nrf_log_backend_rtt.c \
  $(SDK_ROOT)/lib/libraries/experimental_log/src/nrf_log_backend_serial.c \
  $(SDK_ROOT)/lib/libraries/experimental_log/src/nrf_log_default_backends.c \
  $(SDK_ROOT)/lib/libraries/experimental_log/src/nrf_log_frontend.c \
  $(SDK_ROOT)/lib/libraries/experimental_log/src/nrf_log_str_formatter.c \
  $(SDK_ROOT)/lib/libraries/button/app_button.c \
  $(SDK_ROOT)/lib/libraries/util/app_error.c \
  $(SDK_ROOT)/lib/libraries/util/app_error_weak.c \
  $(SDK_ROOT)/lib/libraries/fifo/app_fifo.c \
  $(SDK_ROOT)/lib/libraries/scheduler/app_scheduler.c \
  $(SDK_ROOT)/lib/libraries/timer/app_timer.c \
  $(SDK_ROOT)/lib/libraries/uart/app_uart_fifo.c \
  $(SDK_ROOT)/lib/libraries/util/app_util_platform.c \
  $(SDK_ROOT)/lib/libraries/hardfault/hardfault_implementation.c \
  $(SDK_ROOT)/lib/libraries/util/nrf_assert.c \
  $(SDK_ROOT)/lib/libraries/atomic_fifo/nrf_atfifo.c \
  $(SDK_ROOT)/lib/libraries/balloc/nrf_balloc.c \
  $(SDK_ROOT)/external/fprintf/nrf_fprintf.c \
  $(SDK_ROOT)/external/fprintf/nrf_fprintf_format.c \
  $(SDK_ROOT)/lib/libraries/fstorage/nrf_fstorage.c \
  $(SDK_ROOT)/lib/libraries/fstorage/nrf_fstorage_sd.c \
  $(SDK_ROOT)/lib/libraries/experimental_memobj/nrf_memobj.c \
  $(SDK_ROOT)/lib/libraries/pwr_mgmt/nrf_pwr_mgmt.c \
  $(SDK_ROOT)/lib/libraries/experimental_section_vars/nrf_section_iter.c \
  $(SDK_ROOT)/lib/libraries/strerror/nrf_strerror.c \
  $(SDK_ROOT)/lib/libraries/uart/retarget.c \
  $(SDK_ROOT)/lib/libraries/util/sdk_mapped_flags.c \
  $(SDK_ROOT)/lib/boards/boards.c \
  $(SDK_ROOT)/lib/drivers_nrf/clock/nrf_drv_clock.c \
  $(SDK_ROOT)/lib/drivers_nrf/common/nrf_drv_common.c \
  $(SDK_ROOT)/lib/drivers_nrf/gpiote/nrf_drv_gpiote.c \
  $(SDK_ROOT)/lib/drivers_nrf/uart/nrf_drv_uart.c \
  $(SDK_ROOT)/lib/libraries/bsp/bsp.c \
  $(SDK_ROOT)/lib/libraries/bsp/bsp_btn_ble.c \
  $(SDK_ROOT)/lib/libraries/bsp/bsp_nfc.c \
  $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT.c \
  $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c \
  $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT_printf.c \
  $(SDK_ROOT)/lib/ble/common/ble_advdata.c \
  $(SDK_ROOT)/lib/ble/ble_advertising/ble_advertising.c \
  $(SDK_ROOT)/lib/ble/common/ble_conn_params.c \
  $(SDK_ROOT)/lib/ble/common/ble_conn_state.c \
  $(SDK_ROOT)/lib/ble/common/ble_srv_common.c \
  $(SDK_ROOT)/lib/ble/nrf_ble_gatt/nrf_ble_gatt.c \
  $(SDK_ROOT)/lib/toolchain/gcc/gcc_startup_nrf52.S \
  $(SDK_ROOT)/lib/toolchain/system_nrf52.c \
  $(SDK_ROOT)/lib/ble/ble_services/ble_nus/ble_nus.c \
  $(SDK_ROOT)/lib/softdevice/common/nrf_sdh.c \
  $(SDK_ROOT)/lib/softdevice/common/nrf_sdh_ble.c \
  $(SDK_ROOT)/lib/softdevice/common/nrf_sdh_soc.c \
  $(PROJ_DIR)/application/main.c \

# Include folders common to all targets
INC_FOLDERS += \
  $(SDK_ROOT)/lib/drivers_nrf/comp \
  $(SDK_ROOT)/lib/drivers_nrf/twi_master \
  $(SDK_ROOT)/lib/ble/ble_services/ble_ancs_c \
  $(SDK_ROOT)/lib/ble/ble_services/ble_ias_c \
  $(SDK_ROOT)/lib/libraries/pwm \
  $(SDK_ROOT)/lib/softdevice/s132/headers/nrf52 \
  $(SDK_ROOT)/lib/libraries/usbd/class/cdc/acm \
  $(SDK_ROOT)/lib/libraries/usbd/class/hid/generic \
  $(SDK_ROOT)/lib/libraries/usbd/class/msc \
  $(SDK_ROOT)/lib/libraries/usbd/class/hid \
  $(SDK_ROOT)/lib/libraries/experimental_log \
  $(SDK_ROOT)/lib/ble/ble_services/ble_gls \
  $(SDK_ROOT)/lib/libraries/fstorage \
  $(SDK_ROOT)/lib/drivers_nrf/i2s \
  $(SDK_ROOT)/lib/libraries/mutex \
  $(SDK_ROOT)/lib/libraries/gpiote \
  $(SDK_ROOT)/lib/libraries/experimental_log/src \
  $(SDK_ROOT)/lib/drivers_nrf/gpiote \
  $(SDK_ROOT)/lib/libraries/fifo \
  $(SDK_ROOT)/lib/boards \
  $(SDK_ROOT)/lib/libraries/experimental_memobj \
  $(SDK_ROOT)/lib/drivers_nrf/common \
  $(SDK_ROOT)/lib/ble/ble_advertising \
  $(SDK_ROOT)/lib/ble/ble_services/ble_bas_c \
  $(SDK_ROOT)/lib/ble/ble_services/ble_hrs_c \
  $(SDK_ROOT)/lib/libraries/queue \
  $(SDK_ROOT)/lib/libraries/pwr_mgmt \
  $(SDK_ROOT)/lib/ble/ble_dtm \
  $(SDK_ROOT)/lib/toolchain/cmsis/include \
  $(SDK_ROOT)/lib/ble/ble_services/ble_rscs_c \
  $(SDK_ROOT)/lib/drivers_nrf/uart \
  $(SDK_ROOT)/lib/ble/common \
  $(SDK_ROOT)/lib/ble/ble_services/ble_lls \
  $(SDK_ROOT)/lib/drivers_nrf/wdt \
  $(SDK_ROOT)/lib/libraries/bsp \
  $(SDK_ROOT)/lib/ble/ble_services/ble_bas \
  $(SDK_ROOT)/lib/libraries/experimental_section_vars \
  $(SDK_ROOT)/lib/softdevice/s132/headers \
  $(SDK_ROOT)/lib/ble/ble_services/ble_ans_c \
  $(SDK_ROOT)/lib/libraries/slip \
  $(SDK_ROOT)/lib/libraries/mem_manager \
  $(SDK_ROOT)/external/segger_rtt \
  $(SDK_ROOT)/lib/libraries/usbd/class/cdc \
  $(SDK_ROOT)/lib/drivers_nrf/hal \
  $(SDK_ROOT)/lib/ble/ble_services/ble_nus_c \
  $(SDK_ROOT)/lib/drivers_nrf/rtc \
  $(SDK_ROOT)/lib/softdevice/common \
  $(SDK_ROOT)/lib/ble/ble_services/ble_ias \
  $(SDK_ROOT)/lib/libraries/usbd/class/hid/mouse \
  $(SDK_ROOT)/lib/libraries/ecc \
  $(SDK_ROOT)/lib/drivers_nrf/ppi \
  $(SDK_ROOT)/lib/ble/ble_services/ble_dfu \
  $(SDK_ROOT)/external/fprintf \
  $(SDK_ROOT)/lib/drivers_nrf/twis_slave \
  $(SDK_ROOT)/lib/libraries/atomic \
  $(SDK_ROOT)/lib \
  $(SDK_ROOT)/lib/libraries/scheduler \
  $(SDK_ROOT)/lib/libraries/cli \
  $(SDK_ROOT)/lib/ble/ble_services/ble_lbs \
  $(SDK_ROOT)/lib/ble/ble_services/ble_hts \
  $(SDK_ROOT)/lib/drivers_nrf/delay \
  $(SDK_ROOT)/lib/libraries/crc16 \
  $(SDK_ROOT)/lib/drivers_nrf/timer \
  $(SDK_ROOT)/lib/libraries/util \
  $(SDK_ROOT)/lib/drivers_nrf/pwm \
  $(SDK_ROOT)/config \
  $(SDK_ROOT)/lib/libraries/csense_drv \
  $(SDK_ROOT)/lib/libraries/csense \
  $(SDK_ROOT)/lib/libraries/balloc \
  $(SDK_ROOT)/lib/libraries/low_power_pwm \
  $(SDK_ROOT)/lib/libraries/hardfault \
  $(SDK_ROOT)/lib/ble/ble_services/ble_cscs \
  $(SDK_ROOT)/lib/libraries/uart \
  $(SDK_ROOT)/lib/libraries/hci \
  $(SDK_ROOT)/lib/libraries/usbd/class/hid/kbd \
  $(SDK_ROOT)/lib/drivers_nrf/spi_slave \
  $(SDK_ROOT)/lib/drivers_nrf/lpcomp \
  $(SDK_ROOT)/lib/libraries/timer \
  $(SDK_ROOT)/lib/drivers_nrf/rng \
  $(SDK_ROOT)/lib/drivers_nrf/power \
  $(SDK_ROOT)/lib/libraries/usbd/config \
  $(SDK_ROOT)/lib/toolchain \
  $(SDK_ROOT)/lib/libraries/led_softblink \
  $(SDK_ROOT)/lib/drivers_nrf/qdec \
  $(SDK_ROOT)/lib/ble/ble_services/ble_cts_c \
  $(SDK_ROOT)/lib/drivers_nrf/spi_master \
  $(SDK_ROOT)/lib/ble/ble_services/ble_nus \
  $(SDK_ROOT)/lib/libraries/twi_mngr \
  $(SDK_ROOT)/lib/ble/ble_services/ble_hids \
  $(SDK_ROOT)/lib/libraries/strerror \
  $(SDK_ROOT)/lib/drivers_nrf/pdm \
  $(SDK_ROOT)/lib/libraries/crc32 \
  $(SDK_ROOT)/lib/libraries/usbd/class/audio \
  $(SDK_ROOT)/lib/ble/peer_manager \
  $(SDK_ROOT)/lib/drivers_nrf/swi \
  $(SDK_ROOT)/lib/ble/ble_services/ble_tps \
  $(SDK_ROOT)/lib/ble/ble_services/ble_dis \
  $(SDK_ROOT)/lib/device \
  $(SDK_ROOT)/lib/ble/nrf_ble_gatt \
  $(SDK_ROOT)/lib/ble/nrf_ble_qwr \
  $(SDK_ROOT)/lib/libraries/button \
  $(SDK_ROOT)/lib/libraries/usbd \
  $(SDK_ROOT)/lib/drivers_nrf/saadc \
  $(SDK_ROOT)/lib/libraries/atomic_fifo \
  $(SDK_ROOT)/lib/ble/ble_services/ble_lbs_c \
  $(SDK_ROOT)/lib/ble/ble_racp \
  $(SDK_ROOT)/lib/toolchain/gcc \
  $(SDK_ROOT)/lib/libraries/fds \
  $(SDK_ROOT)/lib/libraries/twi \
  $(SDK_ROOT)/lib/drivers_nrf/clock \
  $(SDK_ROOT)/lib/ble/ble_services/ble_rscs \
  $(SDK_ROOT)/lib/drivers_nrf/usbd \
  $(SDK_ROOT)/lib/ble/ble_services/ble_hrs \

# Libraries common to all targets
LIB_FILES += \

# Optimization flags
OPT = -O3 -g3
# Uncomment the line below to enable link time optimization
#OPT += -flto

# C flags common to all targets
CFLAGS += $(OPT)
CFLAGS += -DBOARD_PCA10040
CFLAGS += -DCONFIG_GPIO_AS_PINRESET
CFLAGS += -DFLOAT_ABI_HARD
CFLAGS += -DNRF52
CFLAGS += -DNRF52832_XXAA
CFLAGS += -DNRF52_PAN_74
CFLAGS += -DNRF_SD_BLE_API_VERSION=5
CFLAGS += -DS132
CFLAGS += -DSOFTDEVICE_PRESENT
CFLAGS += -DSWI_DISABLE0
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb -mabi=aapcs
CFLAGS +=  -Wall -Werror
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# keep every function in a separate section, this allows linker to discard unused ones
CFLAGS += -ffunction-sections -fdata-sections -fno-strict-aliasing
CFLAGS += -fno-builtin -fshort-enums 

# C++ flags common to all targets
CXXFLAGS += $(OPT)

# Assembler flags common to all targets
ASMFLAGS += -g3
ASMFLAGS += -mcpu=cortex-m4
ASMFLAGS += -mthumb -mabi=aapcs
ASMFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
ASMFLAGS += -DBOARD_PCA10040
ASMFLAGS += -DCONFIG_GPIO_AS_PINRESET
ASMFLAGS += -DFLOAT_ABI_HARD
ASMFLAGS += -DNRF52
ASMFLAGS += -DNRF52832_XXAA
ASMFLAGS += -DNRF52_PAN_74
ASMFLAGS += -DNRF_SD_BLE_API_VERSION=5
ASMFLAGS += -DS132
ASMFLAGS += -DSOFTDEVICE_PRESENT
ASMFLAGS += -DSWI_DISABLE0

# Linker flags
LDFLAGS += $(OPT)
LDFLAGS += -mthumb -mabi=aapcs -L $(TEMPLATE_PATH) -T$(LINKER_SCRIPT)
LDFLAGS += -mcpu=cortex-m4
LDFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# let linker dump unused sections
LDFLAGS += -Wl,--gc-sections
# use newlib in nano version
LDFLAGS += --specs=nano.specs


# Add standard libraries at the very end of the linker input, after all objects
# that may need symbols provided by these libraries.
LIB_FILES += -lc -lnosys -lm


.PHONY: default help

# Default target - first one defined
default: $(TARGETS)

# Print all targets that can be built
help:
	@echo following targets are available:
	@echo		$(TARGETS)
	@echo		flash_softdevice
	@echo		sdk_config - starting external tool for editing sdk_config.h
	@echo		flash      - flashing binary

TEMPLATE_PATH := $(SDK_ROOT)/lib/toolchain/gcc


include $(TEMPLATE_PATH)/Makefile.common

$(foreach target, $(TARGETS), $(call define_target, $(target)))

.PHONY: flash flash_softdevice erase

# Flash the program
flash: $(OUTPUT_DIRECTORY)/$(TARGETS).hex
	@echo Flashing: $<
	nrfjprog -f nrf52 --program $< --sectorerase
	nrfjprog -f nrf52 --reset

# Flash softdevice
flash_softdevice:
	@echo Flashing: s132_nrf52_5.0.0_softdevice.hex
	nrfjprog -f nrf52 --program $(SDK_ROOT)/lib/softdevice/s132/hex/s132_nrf52_5.0.0_softdevice.hex --sectorerase
	nrfjprog -f nrf52 --reset

erase:
	nrfjprog -f nrf52 --eraseall

SDK_CONFIG_FILE := $(SDK_ROOT)/config/cmsisconfig/sdk_config.h
CMSIS_CONFIG_TOOL := $(SDK_ROOT)/config/cmsisconfig/CMSIS_Configuration_Wizard.jar
sdk_config:
	java -jar $(CMSIS_CONFIG_TOOL) $(SDK_CONFIG_FILE)
