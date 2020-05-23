/**
 * 
 */
function validarLetras(elemento)
{    
    if(elemento.value.length > 0){
        var miAscii = elemento.value.charCodeAt(elemento.value.length-1)
        console.log(miAscii)
        
        if(miAscii >= 65 && miAscii <= 122){
            return true
        }else {
            elemento.value = elemento.value.substring(0, elemento.value.length-1)
            return false
            
        }
    }else{
        return true
    }
    
}
function validarNumeroo(e, fono){
    var key = window.event ? e.keyCode : e.which;
    if(((48 <= key && key <= 57) || (key == 0) || (key == 8)) && fono.value.length < 10){ 
        return true; 
    }else{ 
        return false; 
    } 
};