//バーガーボタンの開閉
document.addEventListener('DOMContentLoaded', () => {
    const $jsButton = document.getElementById("js-btn");
    $jsButton.addEventListener("click", () => { toggleBurger() });
});

function toggleBurger() { 
    $('.nav , .btn-line').toggleClass('open'); // メニューとバーガーの線にopenクラスをつけ外しする
}


document.addEventListener('DOMContentLoaded', () => {
    const $changeGradeButton = document.getElementsByClassName("changeGradeButton");

    for(let i = 0; i < $changeGradeButton.length; i++){
        $changeGradeButton[i].addEventListener("click", () => { toggleBurger() });
    }
});
