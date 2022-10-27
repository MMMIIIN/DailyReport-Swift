//
//  HomeViewController.swift
//  DailyReport
//
//  Created by Mingwan Choi on 2022/10/27.
//

import UIKit

import FSCalendar
import SnapKit

final class HomeViewController: BaseViewController {
    
    // MARK: - property
    
    private let homeCalendar: FSCalendar = {
        let calendar = FSCalendar()
        calendar.today = Date()
        calendar.appearance.titleFont = .label2
        calendar.locale = Locale(identifier: "ko_KR")
        calendar.appearance.headerDateFormat = "YYYY년 MM월"
        calendar.appearance.headerTitleColor = .black
        calendar.appearance.headerTitleFont = .main
        calendar.appearance.headerMinimumDissolvedAlpha = 0.0
        calendar.appearance.weekdayFont = .label2
        return calendar
    }()
    
    // MARK: - life cycle
    
    override func render() {
        view.addSubview(homeCalendar)
        homeCalendar.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(300)
        }
    }
}
