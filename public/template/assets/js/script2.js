let field1 = document.getElementById('CAT_Custom_1')
let valid = true;




$(".next").click(function () {
    
    
    if(! validateField(field1)){
        valid = false;
    }

    field1.addEventListener("focus", () => {resetField(field1)}, false);

    if(valid){
        alert("coucou")
    }

    
})

function validateField(field) {
    if(field.checkValidity()){
        return true;
    }else{
        if(!field.nextElementSibling){
            field.classList.add('border-input');
            field.insertAdjacentHTML("afterend", '<p class="error-msg">Votre nom est requis !</p>');
            
        }
        return false;
    }
}

function resetField(field){
    field.classList.remove('border-input');
    field.nextElementSibling.remove();
    field1.valid = true;
}