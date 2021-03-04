import UIKit
import CoreData

extension DATASource: NSFetchedResultsControllerDelegate {

    public func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        if let tableView = self.tableView {
            tableView.reloadData()
        } else if let collectionView = self.collectionView {
            collectionView.reloadData()
        }
    }

    public func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
        self.cachedSectionNames.removeAll()

        if let tableView = self.tableView {
            tableView.reloadData()
        } else if let collectionView = self.collectionView {
            collectionView.reloadData()
        }
    }

    public func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        if let tableView = self.tableView {
            tableView.reloadData()
        } else if let collectionView = self.collectionView {
            collectionView.reloadData()
        }
    }

    public func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        if let tableView = self.tableView {
            tableView.reloadData()
        } else if let collectionView = self.collectionView {
            collectionView.reloadData()
        }
        self.delegate?.dataSourceDidChangeContent?(self)
    }
}
