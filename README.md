# Perfect Drive
_a repository for the combined Spotify/google maps API._

Perfect Drive is an app that combines the capabilities of Google Maps and Spotify to create a unique playlist
just for you, catered specifically to the length of your trip. Just submit your starting location and end location
and Perfect Drive will do all the legwork to create a personalized and perfectly timed playlist for your adventure.

Utilizing the public APIs of Spotify and Google Maps, this app strives to deliver a unique collection of songs with
each new route that is given to it. Perfect Drive is still in development/review and should not be used as a reference
or guide for personal work.

## Where we got
We managed to implement the API's to create a playlist of songs based on travel time.  Unfortunately, we have to hard code the parameters for the origin and destination, but otherwise it works fine for displaying a full list of songs for the trip.  An added feature that we didn't remove is that the playlist is entirely populated with soul music.  Specifically Aretha Franklin songs.

## Intended features
Our original intent was to create a robust playlist, including origin, destination, and travel time as well as a playlist including artist name, song name and song duration for each track.  The user would input an origin and destination and return a JSON file ready for consumption.
