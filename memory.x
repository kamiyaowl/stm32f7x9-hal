MEMORY
{
  /* NOTE 1 K = 1 KiBi = 1024 bytes */

  /* Flash memory on ITCM  */ 
  /* FLASH : ORIGIN = 0x00200000, LENGTH = 2048K */
  FLASH : ORIGIN = 0x08000000, LENGTH = 2048K
  /* DTCM: 128K, SRAM1: 368K, SRAM2: 16K */ 
  RAM   : ORIGIN = 0x20000000, LENGTH = 512K 
}

/* This is where the call stack will be allocated. */
/* The stack is of the full descending type. */
/* NOTE Do NOT modify `_stack_start` unless you know what you are doing */
_stack_start = ORIGIN(RAM) + LENGTH(RAM); 
