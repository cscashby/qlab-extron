# qlab-extron
## Control of Extron video matrices from QLab 4.0

To use, either take the example .qlab4 file and clone the 'SetMatrix' cue as appropriate or copy the 'Extron MAV-Control.applescript' file and paste into a new Script cue.

You need the following Memo Qs:

* Q with Number set to MATRIXIP - the IP address of the video matrix (the example has the Extron default 192.168.254.254)
* Q with Number set to MATRIXPORT - the port number of the video matrix for telnet (normally 23)

The SetMatrix script cue MUST have the Notes field set to the command to run on the Matrix device.  Here are some examples:

`1*1!` - send input 1 to output 1
`1*2!` - send input 1 to output 2

You can daisy chain these:

`1*1!1*2!2*3!2*4!` - send input 1 to outputs 1 and 2, and input 2 to 3 and 4

`0*!` - clear all outputs

For more details check out the [manual - specifically page 95 - here](https://www.extron.com/download/files/userman/68-521-20_E.pdf)

