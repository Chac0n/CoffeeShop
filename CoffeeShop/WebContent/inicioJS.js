var modal = document.getElementById('id01');

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var string1 = "";
var p1 = document.createElement("P");

function addOrder() {
var order = {
  'items': [
    {
      'id': '63dc592c-c1b7-4c7c-b85f-7bb64a0e63c5',
      'qty': 100
    }
  ],
  'user': 'Rafa Chacon'
};
var ojson = JSON.stringify(order);
var Httpreq = new XMLHttpRequest(); 
Httpreq.open("PUT",'https://iitd7euw75.execute-api.us-east-1.amazonaws.com/services/orders/createOrder',true);
//Httpreq.send(ojson);
console.log( Httpreq.responseText)          
          		
	
string1 = "";
p1.innerHTML = "";
var c1= document.getElementById("c1");
var cant= document.getElementById("cant");
var s1= document.getElementById("positionT");
string1 = string1  + s1.value + " " +cant.value + ",";
var node = document.createTextNode(string1);
p1.appendChild(node);
c1.appendChild(p1);
}

var orderId = 0;
var numId;

function addOrder2() {
	var c2= document.getElementById("c2");
	var p2 = document.createElement("Button");
	var node2 = document.createTextNode(string1);
	p2.appendChild(node2);
	c2.appendChild(p2);
	console.log(p2)
	var id01 = document.getElementById('id01');
	id01.style.display='none';
	string1 = "";
	p1.innerHTML = "";
	p2.id = orderId + 1;
	numId = p2.id;
	p2.onclick = function () { moveOrder(p2.id); };
}
	
function moveOrder(id) {
	var b1= document.getElementById(id);
	string1 = b1.innerText;
	b1.parentNode.removeChild(b1);
	var c3= document.getElementById("c3");
	var node3 = document.createTextNode(string1);
	var b2 = document.createElement("Button");
	b2.appendChild(node3);
	c3.appendChild(b2);
	b2.id = id;
	console.log(b2.id);
	b2.onclick = function () { moveOrder2(b2.id); };
}

function moveOrder2(id) {
	var b1= document.getElementById(id);
	string1 = b1.innerText;
	console.log(string1);
	b1.parentNode.removeChild(b1);
	var c4= document.getElementById("c4");
	var node3 = document.createTextNode(string1);
	var b3 = document.createElement("Button");
	b3.appendChild(node3);
	c4.appendChild(b3);
	b3.id = id;
	b3.onclick = function () { moveOrder3(b3.id); };
}

function moveOrder3(id) {
	var b1= document.getElementById(id);
	string1 = b1.innerText;
	console.log(string1);
	b1.parentNode.removeChild(b1);
	var c5= document.getElementById("c5");
	var node3 = document.createTextNode(string1);
	var b4 = document.createElement("Button");
	b4.appendChild(node3);
	c5.appendChild(b4);
	b4.id = id;
}
