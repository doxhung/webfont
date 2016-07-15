@font-face {
    font-family: {{ fontName }};
    {% if formats.indexOf('eot')>-1 %}src: url("{{ fontPath }}{{ fontName }}.eot");{% endif %}
    src:
        {% if formats.indexOf('eot')>-1 %}url("{{ fontPath }}{{ fontName }}.eot?#iefix") format("embedded-opentype"),{% endif %}
        {% if formats.indexOf('woff2')>-1 %}url("{{ fontPath }}{{ fontName }}.woff2") format("woff2"),{% endif %}
        {% if formats.indexOf('woff')>-1 %}url("{{ fontPath }}{{ fontName }}.woff") format("woff"),{% endif %}
        {% if formats.indexOf('ttf')>-1 %}url("{{ fontPath }}{{ fontName }}.ttf") format("truetype"),{% endif %}
        {% if formats.indexOf('svg')>-1 %}url("{{ fontPath }}{{ fontName }}.svg#{{ fontName }}") format("svg");{% endif %}
    font-style: normal;
    font-weight: 400;
}

.{{ className }} {
    display: inline-block;
    transform: translate(0, 0);
    text-rendering: auto;
    font: normal normal 400 14px/1 {{ fontName }};
    font-size: inherit;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
}

.{{ className }}-lg {
    vertical-align: -15%;
    line-height: 0.75em;
    font-size: 1.33333333em;
}

.{{ className }}-2x {
    font-size: 2em;
}

.{{ className }}-3x {
    font-size: 3em;
}

.{{ className }}-4x {
    font-size: 4em;
}

.{{ className }}-5x {
    font-size: 5em;
}

.{{ className }}-fw {
    width: 1.28571429em;
    text-align: center;
}{% for glyph in glyphs
%}

.{{ className }}-{{ glyph.name }}::before {
    content: "\{{ glyph.unicode[0].charCodeAt(0).toString(16) }}";
}{% endfor %}
