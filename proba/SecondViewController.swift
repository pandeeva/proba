//
//  SecondViewController.swift
//  proba
//
//  Created by Бардеева Надежда on 07.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(#function)// в консоль будет выводиться ф-ция когда она будет использоваться
    }

    required init?(coder: NSCoder) { // будет работать, когда мы будем инициализироватьс со сторибордом
        super.init(coder: coder) // супер вызываем везде
    }

    override func loadView() {
        super.loadView()
        print(#function)
    }

    override func viewDidLoad() { // срабатывает только один раз при открытии
        super.viewDidLoad()
        view.backgroundColor = .yellow
        print(#function)
        makeBarItem()
    }

    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }

    @objc private func tapAction() {
        let vc = ThirdViewController()
        vc.title = "Новый"
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewWillAppear(_ animated: Bool) { // вызовется перед тем, как мы увидим наш экран7 Здесь можно сделать доп настройки, если нам надо 
        super.viewWillAppear(animated)
        print(#function)
    }

    override func viewWillLayoutSubviews() { //срабатывает, когда переворачиваем экран
        super.viewWillLayoutSubviews()
        print(#function)
    }

    override func viewDidLayoutSubviews() {// срабатывает, когда уже перевернули экран
        super.viewDidLayoutSubviews()
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) { //срабатывает после того, как мы уже увидели наш экран
        super.viewDidAppear(animated)
        print(#function)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: // срабатывает когда будет переворот экрана
        UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) { //вью сейчас будет скрыта на экране
        super.viewWillDisappear(animated)
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) { // наша вьюха уже полностью ушла с экрана
        super.viewDidDisappear(animated)
        print(#function)
    }

    deinit { // срабатывает, когда наш контроллер убит из памяти приложения
        print(#function)
    }

    override func didReceiveMemoryWarning() { //когда память на устройстве вот-вот закончится
        super.didReceiveMemoryWarning()
    }
}
