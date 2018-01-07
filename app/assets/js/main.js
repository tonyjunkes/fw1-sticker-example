$("#inc-test").on("click", function() {
    $(".inc-fill").text(
        $(".inc-fill").text() == "I should disappear..."
            ? "It worked!!!"
            : "I should disappear..."
    );
});
