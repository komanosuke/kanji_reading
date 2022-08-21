//バーガーボタンの開閉
document.addEventListener('DOMContentLoaded', () => {
    const jsButton = document.getElementById("js-btn");
    jsButton.addEventListener("click", () => { openBurger() });
});

function openBurger() {      // js-btnクラスをクリックすると、
    $('.nav , .btn-line').toggleClass('open'); // メニューとバーガーの線にopenクラスをつけ外しする
}