
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progessBar: UIProgressView!
    @IBOutlet weak var flaseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    

    let Quiz = [
    ["5 * 1 = 5 " , "True" ],
    ["5 * 2 = 10 " , "True" ],
    ["5 * 3 = 15 " , "True" ],
    ["5 * 4 = 20 " , "True" ],
    ["5 * 5 = 25 " , "True" ],
    ["5 * 6 = 30 " , "True" ]]
//    ["5 * 7 = 35 " , "True" ],
//    ["5 * 8 = 40 " , "True" ],
//    ["5 * 9 = 45 " , "True" ],
//    ["5 * 10 = 50" , "True"  ],
//    ["6 * 1 = 6 " , "True"  ],
//    ["6 * 2 = 12 " , "True" ],
//    ["6 * 3 = 18 " , "True" ],
//    ["6 * 4 = 24 " , "True" ],
//    ["6 * 5 = 30 " , "True" ],
//    ["6 * 6 = 36 " , "True" ],
//    ["6 * 7 = 25 " , "True" ],
//    ["6 * 8 = 40 " , "True" ],
//    ["6 * 9 = 54 " , "True" ],
//    ["6 * 10 = 60 " , "True"],
//    ["7 * 1 = 25 " , "True" ],
//    ["7 * 2 = 25 " , "True" ],
//    ["7 * 3 = 25 " , "True" ],
//    ["7 * 4 = 25 " , "True" ],
//    ["7 * 5 = 25 " , "True" ],
//    ["7 * 6 = 25 " , "True" ],
//    ["7 * 7 = 25 " , "True" ],
//    ["7 * 8 = 25 " , "True" ],
//    ["7 * 9 = 25 " , "True" ],
//    ["7 * 10 = 25 " , "True" ],
//    ["8 * 1 = 25 " , "True"  ],
//    ["8 * 2 = 25 " , "True"  ],
//    ["8 * 3 = 25 " , "True"  ],
//    ["8 * 4 = 25 " , "True"  ],
//    ["8 * 5 = 25 " , "True"  ],
//    ["8 * 6 = 25 " , "True"  ],
//    ["8 * 7 = 25 " , "True"  ],
//    ["8 * 8 = 25 " , "True"  ],
//    ["8 * 9 = 25 " , "True"  ],
//    ["8 * 10 = 25 " , "True" ],
//    ["9 * 1 = 25 " , "True"  ],
//    ["9 * 2 = 25 " , "True"  ],
//    ["9 * 3 = 25 " , "True"  ],
//    ["9 * 4 = 25 " , "True"  ],
//    ["9 * 5 = 25 " , "True"  ],
//    ["9 * 6 = 25 " , "True"  ],
//    ["9 * 7 = 25 " , "True"  ],
//    ["9 * 8 = 25 " , "True"  ],
//    ["9 * 9 = 25 " , "True"  ],
//    ["9 * 10 = 25 " , "True" ],
//    ["10 * 1 = 25 " , "True" ],
//    ["10 * 2 = 25 " , "True" ],
//    ["10 * 3 = 25 " , "True" ],
//    ["10 * 4 = 25 " , "True" ],
//    ["10 * 5 = 25 " , "True" ],
//    ["10 * 6 = 25 " , "True" ],
//    ["10 * 7 = 25 " , "True" ],
//    ["10 * 8 = 25 " , "True" ],
//    ["10 * 9 = 25 " , "True" ],
//    ["10 * 9 = 25 " , "True" ]]
   // اسم للمصوفه + ادخال البيانات
    
    
    var questionnumebr = 0
    
    override func viewDidLoad() {     // مكان العرض
        super.viewDidLoad()
        ubdadteUI()        // نفذ الفنكشن
        
    }

    @IBAction func anserButtonpressed(_ sender: UIButton) { // أول ما يضغط على الزر يبدأ يزودلي بواحد وامشي على العناصر الي موجودين بالمصفوفة
        let userAnswer = sender.currentTitle // True , False
        let actulAnswer  = Quiz[questionnumebr][1]
        if userAnswer == actulAnswer {
            print("Right")
        }else{
            print("False")
        }
        if questionnumebr < Quiz.count {
            questionnumebr += 1
        }
        ubdadteUI()           // نفذ الفنكش
    }
    
    func ubdadteUI(){
        questionLable.text = Quiz[questionnumebr][0]       //الفنكش تحتوي على اسم اللايبل والنص واسم الارري وداخلها رقم السؤال ليبدأ من صفر

    }
    
}

