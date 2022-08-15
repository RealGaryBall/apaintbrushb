# Developing ARDUX for ZMK

## Work In Progress

The below is a work in progress. Don't be surprised if there are quirks in the information provided below. PRs are welcome.

## Misc Notes

```

KiTTY has an auto reconnect option, but it's not fast enough to catch the first few messages
 
There's a Kconfig setting to delay starting the logging thread.
 
Set it a tad higher, should let you catch first log messages.
 
LOG_PROCESS_THREAD_STARTUP_DELAY_MS is the setting.

```
