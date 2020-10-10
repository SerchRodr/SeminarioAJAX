let usuarios = ['serchrod']
let passwords = ['serchrod']
var limite = 5;


function redirige(page){
    var usuario = document.getElementById("estiloUser").value;
    var contra = document.getElementById("estiloPassword").value;
    console.log(usuarios[0]);
    console.log(usuario);
    if(usuarios[0] == usuario && passwords[0]== contra){
        window.location.replace(page);
    }
    else {
        alert("Usuario o contraseña incorrecta");
    }
}

function cuenta(n){
    for(var i = 0; i < n; i++){
        console.log(i);
    }
}

function concatena(){
    var i = 1;
    var taco = "taco";
    console.log(taco);
    while(i < limite){
        taco = taco.concat(taco);
        console.log(taco);
        i++;
    }
}