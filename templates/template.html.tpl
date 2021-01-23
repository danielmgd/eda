<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>{{ title }}</title>

    <link rel="stylesheet" href="reveal.js/dist/reset.css">
    <link rel="stylesheet" href="reveal.js/dist/reveal.css">
    <link rel="stylesheet" href="reveal.js/dist/theme/black.css" id="theme">

    <!-- Theme used for syntax highlighted code -->
    <link rel="stylesheet" href="reveal.js/plugin/highlight/monokai.css" id="highlight-theme">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>

<body>
    <div class="reveal">
        <div class="slides">
            <section class="no-footer">
                <h1 class="lol">{{ title }}</h1>
                <h1><small>{{ subtitle }}</small></h1>
            </section>

            <section data-external-slide-replace="{{ content_main }}"> </section>
        </div>
    </div>

    <script src="reveal.js/dist/reveal.js"></script>
    <script src="reveal.js/plugin/notes/notes.js"></script>
    <script src="reveal.js/plugin/markdown/markdown.js"></script>
    <script src="reveal.js/plugin/highlight/highlight.js"></script>

    <script src="plugins/external_slide.js"></script>
    <script src="plugins/reveal.js-menu/menu.js"></script>
    <script src="plugins/chalkboard/plugin.js"></script>
    <script src="plugins/reveal-compiler-explorer.js"></script>
    <script>
        Reveal.initialize({
            hash: true,

            plugins: [ExternalSlide, RevealMarkdown, RevealHighlight, RevealNotes, RevealMenu, RevealChalkboard, RevealCompilerExplorer],

            menu: {
                side: 'left',
                width: 'third',
                custom: [{
                    title: 'Temario',
                    icon: '<i class="fa fa-book">',
                    src: '{{ toc_file }}'
                }, {
                    title: 'About',
                    icon: '<i class="fa fa-info">',
                    src: 'about.html'
                }]
            },
            chalkboard: {
                readOnly: false,
                theme: "chalkboard",
                toggleChalkboardButton: {
                    left: "80px"
                },
                toggleNotesButton: {
                    left: "130px"
                },
            },
            compilerExplorer: {
                compiler: "g83",
                runMain: true
            }
        });
    </script>
</body>

</html>