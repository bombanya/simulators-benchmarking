*** Variables ***
${SCRIPT}        ${CURDIR}/../scripts/single-node/stm32f4_discovery.resc
${UART}          sysbus.usart1

*** Test Cases ***
Coremark
    Execute Command    $bin = @/mnt/disk0/st/workspace_1.16.1/coremark_427/Debug/coremark_427.elf
    Execute Script     ${SCRIPT}

    Create Terminal Tester    ${UART}
    Start Emulation
    Wait For Line On Uart     DONE    60
