
function dropDownList_Populate() {
    var url_type
    var rb = document.getElementById("EventType");
    var inputs = rb.getElementsByTagName('input');
    var flag = false;
    var selected;
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            flag = true;
            break;
        }
    }
    if (flag) {
        if (selected.value == "events")
            url_type = "events.xml";
        if (selected.value == "sports")
            url_type = "sports.xml";
    }
    //code for ajax
    $.ajax({
        type: "GET",
        url: url_type,
        dataType: "xml",
        success: function (xml) {
            var select = $('#dropDownList_Details');
            var i = 1;
            $(xml).find('Tickets').each(function () {
                $(this).find('event').each(function () {
                    var name = $(this).attr('name');
                    var date = $(this).attr('date');
                    var time = $(this).attr('time');
                    var price = $(this).attr('price');
                    var value = name + ',' + date + ',' + time + ',' + price;
                    var optionId = "option" + i;
                    document.getElementById(optionId).value = value;
                    document.getElementById(optionId).innerHTML = value;
                    i++;
                });
            });
        } //success close
    });

}

//validate function
function validate() {
    var isValidInfo = true;
    var name = document.getElementById("txtName");
    if (name.value.trim() == "" || name.value == null)
    { alert("Enter valid name"); isValidInfo = false; }

    var address = document.getElementById("txtAddress");
    if (address.value.trim() == "" || address.value == null)
    { alert("Enter valid address"); isValidInfo = false; }

    var accountNum = document.getElementById("txtAccountNum");
    if (accountNum.value.trim() == "" || accountNum.value == null)
    { alert("Enter valid account information"); isValidInfo = false; }

    //if (isValidInfo == true)
    //    document.getElementById("divThankYouNote").style.display = 'block';
}


//view tickets function
function viewTickets() {
    var isValidInfo = true;

    var name = document.getElementById("txtName");
    if (name.value.trim() == "" || name.value == null)
    { alert("Enter valid name"); isValidInfo = false; }

    var address = document.getElementById("txtAddress");
    if (address.value.trim() == "" || address.value == null)
    { alert("Enter valid address"); isValidInfo = false; }

    var details = document.getElementById("dropDownList_Details");
    if (details.value == 0)
    { alert("Select valid event"); isValidInfo = false; }

    var ticketCount = document.getElementById("ddlNumber");
    if (ticketCount.value == 0)
    { alert("Select valid number of tickets"); isValidInfo = false; }

    if (isValidInfo == true) {
        var randomNum = Math.floor(Math.random() * 900000) + 100000;

        document.getElementById("tktNum_Span").innerHTML = randomNum;
        document.getElementById("tktName_Span").innerHTML = name.value;
        document.getElementById("tktAddress_Span").innerHTML = address.value;
        document.getElementById("tktEvent_Span").innerHTML = details.value;
        document.getElementById("tktCount_Span").innerHTML = ticketCount.value;

        document.getElementById('hdnTktNum').value = randomNum;

        document.getElementById('hdnName').value = name.value;
        document.getElementById('hdnAddress').value = address.value;
        document.getElementById('hdnDetails').value = details.value;
        document.getElementById('hdnTktCount').value = ticketCount.value;



        document.getElementById("tktDetails_Div").style.display = 'block';
    }
}