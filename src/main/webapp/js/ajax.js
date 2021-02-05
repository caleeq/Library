function ajax() {
    $.post(ctx + "/book/findBook", {"queryBookName": $("#test").val()}, function (data) {
        $("#list").empty();
        if ($("#test").val() !== "") {
            const book = JSON.parse(data);
            book.forEach(function (obj) {
                const row = document.createElement("tr");
                for (const name in obj) {
                    const col = document.createElement("td");
                    col.textContent = obj[name];
                    row.append(col);
                }
                $("#list").append(row);
            })
        }
    })
}