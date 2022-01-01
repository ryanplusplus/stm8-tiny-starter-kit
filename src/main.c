/*!
 * @file
 * @brief
 */

#include <stdbool.h>
#include <stddef.h>
#include "interrupts.h"
#include "clock.h"
#include "tim4_system_tick.h"
#include "tiny_timer.h"
#include "pb5_heartbeat.h"
#include "watchdog.h"

static tiny_timer_group_t timer_group;

void main(void)
{
  interrupts_disable();
  {
    clock_init();
    tiny_timer_group_init(&timer_group, tim4_system_tick_init());
    watchdog_init(&timer_group);
    pb5_heartbeat_init(&timer_group);
  }
  interrupts_enable();

  while(true) {
    if(!tiny_timer_group_run(&timer_group)) {
      interrupts_wait_for_interrupt();
    }
  }
}
