refreshFrequency: '1s'
command: "ruby bar.widget/run.rb"

style: """
background-color: #1d1f21
position: relative
text-align: center

#bar
    padding: 1px 0
    display: inline-block
    line-height: 20px
    margin: 0 auto
    font-size: 13px
    font-family: Rictynerdfonts-Regular

.seg
    display: inline-block
    margin: 0 1em
    color: #707880
"""

render: (stdout) ->
    s = '<div id="bar">'
    JSON.parse(stdout).forEach (v) ->
        s += """
        <div class="seg" style="color:#{v.color}">
            #{v.icon}&nbsp;#{v.content}
        </div>
        """
    s += """
    <div class="seg" id="btn">hoge</div>
    """
    s += '</div>'

afterRender: (domEl) ->
    $(domEl).find('#btn').on 'click', => @run "open http://www.google.com/"
