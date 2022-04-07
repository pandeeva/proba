//
//  ViewController.swift
//  proba
//
//  Created by Бардеева Надежда on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan // для проверки покрасим экран в цвет
        makeButton()
    }

    private func makeButton() { // дабавляем кнопку
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40)) // задаем расположение, можно использовать и другие инициализаторы
        button.center = view.center // центр кнопки будет размещен по центру экрана
        button.setTitle("Нажми", for: .normal) // задаем текст для кнопки
        button.backgroundColor = .black // задаем цвет для кнопки
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside) // код, который будет испонен при нажатии на кнопкуб пищем обжектив си ф-цию и вставляем в #selector, touchUpInside - нажали и отпустили кнопку - тогла сработает
        view.addSubview(button) //добавление кнопки на экран
    }

    @objc private func tapAction() {
        let vc = ThirdViewController()
        present(vc, animated: true)// модальоный переход - всплывает анимация - появляется 3я вьюха и мы можем ее полностью смахнуть вниз и вернуться на предыдущий экран
    }
}

