Load "guilib.ring"
new qapp {
        win1 = new qwidget() {
                setwindowtitle("play sound!") show()
        }
        new qmediaplayer()  {
                setmedia(new qurl("footstep.wav"))
                setvolume(50) play()
        }
        exec()
}
