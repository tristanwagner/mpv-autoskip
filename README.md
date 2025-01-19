# MPV Autoskip

An mpv script that will automatically skip irrelevant chapters in a file: intro, credits and outro.

It was designed for my personal use watching Hunter X Hunter that has a structure like this Intro/FirstPart/SecondPart/Credits/Outro.

You can edit it to fit your needs.

## Install

Copy the script into your `~/.config/mpv/scripts` folder

```bash
wget -P ~/.config/mpv/scripts/ https://raw.githubusercontent.com/tristanwagner/mpv-autoskip/main/autoskip.lua
```

## Usage

Press the `Tab` button to active/deactivate it.

You can also edit the script to put your own keybind.

Or by adding the following line to `~/.config/mpv/input.conf`:

```
NEW_KEY script-binding autoskip-key
```
