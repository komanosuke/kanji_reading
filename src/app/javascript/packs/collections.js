//漢字の読みクイズのセットアップ
const setUpData = () => {
	let gradeList = ['レア ★','レア ★★','レア ★★★','レア ★★★★','レア ★★★★★']
	//各レア度に１つずつボタンを作成
	for(let i = 0; i < 4; i++){
		let elementListClone = document.getElementsByClassName('card_list');
		let cloneElement = elementListClone[i].cloneNode(true);
		elementListClone[i].after(cloneElement);
	}

	//各レア度のボタンをwantedButton個 複製
	let kanjiClone = document.getElementsByClassName('cards');

	let oneStarBtnNum = 20;
	let PositionForAfter = 0;
	let minusWhat = 4;
	for(let i = 0; i < 5; i++){
		copyButtons(oneStarBtnNum, PositionForAfter, kanjiClone, minusWhat);
		PositionForAfter += oneStarBtnNum
		oneStarBtnNum -= minusWhat;
		//console.log(kanjiClone);
	}

	//各レア度の☆を表示
	for(let i = 0; i < 5; i++){
		let grade = document.getElementsByClassName('grade');
		grade[i].textContent = gradeList[i];
	}
}
setUpData();

function copyButtons(oneStarBtnNum, PositionForAfter, kanjiClone, minusWhat){
	for(let j = 0; j < oneStarBtnNum-1; j++){
		let cloneElement = kanjiClone[0].cloneNode(true);
		kanjiClone[PositionForAfter].after(cloneElement);
	}
}