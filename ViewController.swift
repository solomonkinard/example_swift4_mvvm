import Cocoa

class ViewController: NSViewController {
  
  private let viewModel: ViewModel = ViewModel()
  private var phraseObserver: (Any)? = nil
  
  @IBOutlet weak var txfPhrase: NSTextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    phraseObserver = viewModel.observe(\.phrase) { (foo, change) in
      self.txfPhrase.stringValue = foo.phrase
    }
  }

  @IBAction func btnClick(_ sender: Any) {
    viewModel.addS(phrase: txfPhrase.stringValue)
  }
}
