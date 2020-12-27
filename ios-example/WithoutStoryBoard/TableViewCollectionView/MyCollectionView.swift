
import UIKit

class MyCollectionView : UITableViewCell {

    weak var delegate : ListItemTapProtocal?

    var models:[DataModel] = []
    
    func bindJobs(models:[DataModel]) {
        self.models = models
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
         let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
               layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
               layout.minimumLineSpacing = 5.0
               layout.minimumInteritemSpacing = 5.0
               layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        
            layout.itemSize = CGSize(width: 150, height: UIScreen.main.bounds.height)
               
               let myCollectionView:UICollectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
               myCollectionView.dataSource = self
               myCollectionView.delegate = self
               myCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "video_cell")
               myCollectionView.backgroundColor = UIColor.white
        
               self.addSubview(myCollectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(delegate: ListItemTapProtocal, title: String) {
        print("bind.....")
       self.delegate = delegate
       textLabel?.text = title
     }

}

extension MyCollectionView : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //         this is each row number of items
        //        return Int.random(in: 1..<8)
        print("Row size")
        print(models.count)
        return self.models.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("index path... in UICollectionViewDataSource ---")
        print(indexPath[1])
        //         item is the row items list horizontal items
        print(indexPath.item)
        
        print("Modelss")
        print(models[0].imageUrl)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "video_cell", for: indexPath) as! CollectionViewCell
        let imageName = models[indexPath[1]].imageUrl
        var imageView: UIImageView
        
        print("Image name...")
        print(imageName)
        let image: UIImage? = UIImage(named: imageName)
        if (image != nil) {
            imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

            cell.addSubview(imageView)

        }
   
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")

    }
    
    
}

extension MyCollectionView : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("index path...")
        print(indexPath[1])
   
        let itemsPerRow:CGFloat = 2
        
        let hardCodedPadding:CGFloat = 9
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
     
    }

}
