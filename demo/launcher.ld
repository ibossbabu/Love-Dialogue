// Launcher Menu
[load_theme: demo/theme.ld]

// Define UI Character (Invisible narrator or just text)
@atlas Miisan demo/assets/character_portraits/girl1_atlas.png
@rect Miisan Happy 0 0 100 108
@voice Miisan demo/assets/sfx/blip.wav
@color Miisan 00FFFF

// Start background music
[bgm: demo/assets/sfx/music.wav]


[start]
Miisan: (Happy) Welcome to thek LoveDialogue Engine Hub!
: Here are new features
: As you can see, I dont need a character to talk
: Also you can swap to any background you like
[bg: demo/assets/bg/pic1.jpg]
: Like this
[bg: demo/assets/bg/pic2.jpg]
: This
[bg: demo/assets/bg/pic3.jpg]
: AND THIS!!
Miisan: (Happy) Select a demo to see specific features in action.

-> Full Story Demo (Logic, Choices, Atlas) [target:load_story]
-> Tech Showcase (Movement, Audio, Tweens) [target:load_tech]
-> Quit [target:quit]

[load_story]
[signal: LoadScript demo/scripts/story.ld]
Miisan: Loading Story...

[load_tech]
[signal: LoadScript demo/scripts/tech.ld]
Miisan: Loading Tech...

[quit]
[signal: QuitGame]
(end)
