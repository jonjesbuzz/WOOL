# WOOL - Wireless Omnisensor Over LoRaWAN™

## Connecting to mDot (UDK aka large board)
Instructions tested on Mac.  Windows users… uh… ¯\\\_(ツ)\_/¯ Hope you know how to talk serial on a COM port?

1. Connect a micro-USB cable to the board and your laptop.
2. Open Terminal (or a terminal emulator)
3. Type `screen /dev/cu.usbmodem14xx 115200`    
    For this step, type the `cu.usb` part and hit tab.  Hopefully it will autocomplete.
    
    
## Sending Messages to Conduit.
Make sure the Conduit is plugged in to Ethernet (for the GT network, make sure your laptop is plugged in to Ethernet).

1. Open the serial terminal.
2. Run the following commands once:
    
    ```
    AT+JOIN
    AT+ACK=1
    ```
3. Run the following command to send messages.

    ```
    AT+SEND=[message here]
    ```
    
    If you see "OK", your message has been sent.
    
## Configuring Conduit's Message Forwarder
1. Discover the Conduit's IP address.  (I use its serial terminal and `ifconfig`).
2. Visit `http://conduit.ip.address:1880`, replacing the `conduit.ip.address` with the actual IP address.
3. Configure the Node-RED blocks to receive a Lora packet and take action on it as needed.