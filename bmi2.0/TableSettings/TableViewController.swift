

import UIKit

class TableViewController: UITableViewController {
    
    var settingsArray: SettingsValues = Values()
    var identVC: SettingsValues = Values()
    var darkTheme = false
    var colorTheme: SettingsValues = Values()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return settingsArray.names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = settingsArray.names[indexPath.row]
        let switchik = UISwitch(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        switchik.addTarget(self, action: #selector (switchTarget(param:)), for: .valueChanged)
        cell.accessoryView = switchik
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcNames = identVC.identNames[indexPath.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: vcNames)
        self.navigationController?.pushViewController((vc ?? nil)!, animated: true)
    }
    
    @objc func switchTarget (param: UISwitch) {
        if param.isOn {
            self.view.backgroundColor = colorTheme.backgroundColorDarkGray
            self.darkTheme = true
        } else {
            self.view.backgroundColor = colorTheme.backgroundColorWhite
            self.darkTheme = false
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


