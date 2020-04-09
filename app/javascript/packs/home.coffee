ready = ->
    console.log("test")

    $(document).ready(ready)
    $(document).on "page:load", ready