#![deny(unsafe_code)]
#![deny(warnings)]
#![no_std]
#![no_main]

use cortex_m_rt::entry;
use stm32f7x9_hal::{stm32, prelude::*};

#[entry]
fn main() -> ! {
    let d = stm32::Peripherals::take().unwrap();

    let gpioj = d.GPIOJ.split();
    let mut led = gpioj.pj13.into_push_pull_output();

    loop {
        for _ in 0..1_000_000 {
            led.set_high();
        }

        for _ in 0..1_000_000 {
            led.set_low();
        }
    }
}