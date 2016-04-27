console.log("Loaded");
function test(){
    var div = document.getElementById("col1");
    var h2 = document.createElement('h1');
    h2.innerHTML ="Javascript Test";
    console.log(h2);
    div.appendChild(h2);
    console.log(div);

}

function orders(){

    //alert('Mouse over orders');
    var orders = document.getElementById('orders');
    orders.innerHTML = "Clicked Orders"

    make_tds();

}


function make_tds(){
    var tds = document.getElementsByTagName('td');
    for(i=0;i<tds.length; i++){
        console.log("TD");
        tds[i].innerHTML = "dd";
    }
}


getText = function(url, callback) // How can I use this callback?
{
    var request = new XMLHttpRequest();
    request.onreadystatechange = function()
    {
        if (request.readyState == 4 && request.status == 200)
        {
            callback(request.responseText); // Another callback here
        }
    };
    request.open('GET', url);
    request.send();
}


getText('somephpfile.php', mycallback); //pas




function jumbotron(){
    var jumbomod = document.getElementsByClassName('jumbotron');
    xhttp = new XMLHttpRequest();

getText("/shop/customer/color/", function(response){
    jumbomod[0].setAttribute("style","background-color : " + response);
    console.log(response)
})


}