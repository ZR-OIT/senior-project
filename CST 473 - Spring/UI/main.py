import PySimpleGUI as sg

# Retrieve screen resolution
screen_width, screen_height = sg.Window.get_screen_size()
#print(screen_width, screen_height)

sg.theme('SandyBeach')

code_button_size = (100, 3)
option_button_size = (30, 3)

# Column layout
codes = [[sg.Button(button_text='Code 1', size=code_button_size)],
         [sg.Button(button_text='Code 2', size=code_button_size)],
         [sg.Button(button_text='Code 3', size=code_button_size)],
         [sg.Button(button_text='Code 4', size=code_button_size)],
         [sg.Button(button_text='Code 5', size=code_button_size)],
         [sg.Button(button_text='Code 6', size=code_button_size)]]

options = [[sg.Button(button_text='Battery %', disabled=True, button_color=('Black', 'White'), size=option_button_size)],
           [sg.Button(button_text='Scroll\nUp', button_color=('White', 'Grey'), size=option_button_size)],
           [sg.Button(button_text='Scroll\nDown', button_color=('White', 'Grey'), size=option_button_size)],
           [sg.Button(button_text='Gauges', button_color=('White', 'Grey'), size=option_button_size)],
           [sg.Button(button_text='Clear\nCodes', button_color=('White', 'Grey'), size=option_button_size)],
           [sg.Button(button_text='Settings', button_color=('White', 'Grey'), size=option_button_size)]]

# Window layout
layout = [[sg.Column(codes, element_justification='l'), sg.Column(options, element_justification='r')]]

# Display the window and get values
window = sg.Window('Zak\'s OBD-2 Diagnostic Tool', layout, size=(screen_width, screen_height), margins=(0,0), element_padding=(0,0), no_titlebar=True)

while True:
    event, values = window.read()
    if event == sg.WIN_CLOSED or event == 'Settings':
        break

window.close()