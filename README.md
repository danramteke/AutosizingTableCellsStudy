# AutosizingTableCellsStudy

A study in self sizing cells. The important bit seems to be 

    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.layoutIfNeeded()
    }
