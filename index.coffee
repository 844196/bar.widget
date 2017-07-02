refreshFrequency: '1s'
command: "ruby bar.widget/run.rb"

style: """
position: relative
text-align: center

#bar
    display: inline-block
    margin: 5px auto
    padding: 3px .8em
    line-height: 15px
    font-size: 11px
    font-family: Rictynerdfonts-Regular
    color: #c5c8c6
    background-color: #1d1f21
    border-radius 3px

.seg
    margin: 0 1em
"""

render: (output) ->
    data = JSON.parse(output)

    """
    <div id="bar">
        <span class="seg" style="color:#85678f">
             #{data.uptime}
        </span>
        <span class="seg" style="color:#5f819d">
             #{data.date}
        </span>
        <span class="seg" style="color:#5e8d87">
             #{data.time}
        </span>
    </div>
    """
