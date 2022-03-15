//
//  ViewController.swift
//  Binar
//
//  Created by Arif Luthfiansyah on 11/03/22.
//

import UIKit

final class DashboardViewController: UITableViewController {
    var selectedStudent: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let studentCount: Int = Student.sorted.count
        return studentCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableCell", for: indexPath)
        
        let row: Int = indexPath.row
        let student: Student = Student.sorted[row]
        cell.textLabel?.text = student.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row: Int = indexPath.row // selected row
        selectedStudent = Student.sorted[row] // get Student from sorted at number of row
        switch selectedStudent {
        case .ArifLuthfi:
            goToARViewController()
        case .TioHardadi:
            goToARViewController()
        case .MaulanaFrasha:
            goToMFVC()
        case .AdrianKurniawan:
            goToAKViewController()
        case .AiedylDava:
            goToADViewController()
        case .PranaApsara:
            goToPWViewController()
        case .RadenDimas:
            goToRDViewController()
        case .DimasPurnomo:
            goToDPViewController()
        case .TatangSulaeman:
            goToTSViewController()
        default:
            break
        }
    }
}

// MARK: goToARViewController
extension DashboardViewController {
    func goToARViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "ARMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ARViewController") as? ARViewController else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: goToTHViewController
extension DashboardViewController {
    func goToTHViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "THMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "THViewController") as? THViewController else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: goToPWViewController
extension DashboardViewController{
    func goToPWViewController(){
        guard let selectedStudent = selectedStudent else {return}
        let storyboard = UIStoryboard(name: "PWMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "PWViewController") as? PWViewController else{
            return
        }
        viewController.name = selectedStudent.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}


extension DashboardViewController {
    func goToMFVC() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "MFMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "MFVC") as? MFVC else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: goToAKViewController
extension DashboardViewController {
    func goToAKViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "AKMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "AKViewController") as? AKViewController else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension DashboardViewController {
    func goToADViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "ADMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ADViewController") as? ADViewController else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension DashboardViewController {
    func goToRDViewController() {
        guard let selectedStudet = selectedStudent else { return }
//        let storyboard = UIStoryboard(name: "ADMain", bundle: nil)
//        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ADViewController") as? ADViewController else {
//            return
//        }
        let viewController = RDViewController()
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: goToDPViewController
extension DashboardViewController {
    func goToDPViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "DPMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "DPViewController") as? DPViewController else {
            return
        }
        viewController.name = selectedStudet.name
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: goToTSViewController
extension DashboardViewController {
    func goToTSViewController() {
        guard let selectedStudet = selectedStudent else { return }
        let storyboard = UIStoryboard(name: "TSMain", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "TSViewController") as? TSViewController else {
            return
        }

        navigationController?.pushViewController(viewController, animated: true)
    }
}
