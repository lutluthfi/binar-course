//
//  Challenge4TableViewController.swift
//  Binar
//
//  Created by Adji Firmansyah on 4/4/22.
//

import UIKit

class Challenge4TableViewController: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    tableView.register(MenuTableViewCell.self,
                       forCellReuseIdentifier: MenuTableViewCell.reuseIdentifier)
    
    configTableView()
    
  }
  
  
  func configTableView() {
    tableView.separatorStyle = .none
    let headerView = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 250))
    guard let imageUrl = URL(string: CoffeeShop.listCoffe().urlMainImage) else { return }
    guard let imageData = try? Data(contentsOf: imageUrl) else { return }
    let image =  UIImageView(image: UIImage(data: imageData))
    print(imageData)
    headerView.imageView.image = image.image
    tableView.tableHeaderView = headerView
   
    
    
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.reuseIdentifier, for: indexPath)
    cell.backgroundColor = .white
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CGFloat(tableView.frame.height)
  }
  
  override func scrollViewDidScroll(_ scrollView: UIScrollView) {
    
    let headerView = self.tableView.tableHeaderView as! StretchyTableHeaderView
    headerView.scrollViewDidScroll(scrollView: scrollView)
  }
}

extension Challenge4TableViewController {
  
}