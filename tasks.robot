*** Settings ***
Documentation     Spotify Windows desktop application robot. Opens the Spotify
...               desktop application, searches for the given song, and plays
...               the song. Demonstrates the basic Windows automation
...               capabilities of the   Framework.
Library           RPA.Windows

*** Variables ***
${SONG_NAME}=     lofar

*** Tasks ***
Open Spotify desktop application and play a song
    Open the Spotify desktop application
    Search for the song
    Select the song
    Play the song

*** Keywords ***
Open the Spotify desktop application
    Sleep    3s
    Windows Search    Spotify
    Sleep    3s

Search for the song
    Send Keys    keys={CTRL}l
    Send Keys    keys=${SONG_NAME}
    Sleep    3s

Select the song
    Send Keys    keys={ENTER}
    Sleep    3s
    Send Keys    keys={TAB}
    Sleep    3s
    Send Keys    keys={ENTER}

Play the song
    Send Keys    keys={ENTER}
