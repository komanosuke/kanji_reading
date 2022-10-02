let intros = document.getElementsByClassName('intro');

let windowSize = window.innerWidth;
if (windowSize < 750) {
	for(let i = 0; i < intros.length; i++){
        intros[i].src = '/intro_resp' + String(i) + '.jpg';
    }
}