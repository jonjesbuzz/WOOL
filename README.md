# WOOL - Wireless Omnisensor Over LoRaWAN™

## Protocol Specification
For our specific implementation, WOOL packs a 16-bit identifier, a 16-bit value representing light intensity, and an 8-bit value representing motion activity, and sends the hexadecimal string over the network to the Conduit station.  A Node-RED instance then decodes the package and sends it to the Shepherd backend server (Ruby on Rails).

## Connecting to mDot (UDK aka large board)
Instructions tested on Mac.  Windows users will need a serial terminal application that can communicate over a COM port.

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