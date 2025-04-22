import 'dart:math';

class StudentProblem {
  final String fullName;
  final int problemNo;
  
  StudentProblem({required this.fullName,required this.problemNo});
  
  @override
  String toString() => "$fullName => $problemNo";
}

int checkAndRandomProblemNo(List<int> prevNo){
  final problemNo = Random().nextInt(15);
  
  if(prevNo[problemNo] >= 2){
    return checkAndRandomProblemNo(prevNo);
  }
  
  return problemNo;
}

// Assign random problem No's to students;
void problemNoAssigner(List<String> students) {
  final List<int> filledCount = List.filled(15, 0);
  int count = 0;
  
  students.forEach((elem) {
    final int problemNooo = checkAndRandomProblemNo(filledCount);
    
    filledCount[problemNooo] +=1;
    count++;
    
    print("$count. ${StudentProblem(fullName: elem, problemNo: problemNooo + 1)}");
  });
}


void main() {
  
  final List<String> students604 = [
  "Abbasov Əli Fuad",
  "Abbasova Sevinc Namiq",
  "Feyzi Nigar Vasif",
  "Hacılı Rəsul Adil",
  "Hümmətov Fərid Rəfail",
  "Hüseynli Nəzirin Tural",
  "Hüseynli Səbuhi Xankişi",
  "Kazımlı Şahnigar Elbrus",
  "Kərimli Samirə Samir",
  "Məmmədli Vüsal Xalid",
  "Məmmədov Elnur Lətib",
  "Nağıyev Toğrul Elsevər",
  "Novruzova Asiman Samir",
  "Rəcəbova Zülfiyyə Rəşad",
  "Salayeva Fatimə Abas",
  "Taebi Mahdi Mohammad Ali",
  "Tağıyev Nuran Nurəddin",
  "Əhmədov Həsən Sabit",
  "Əliyev Ruslan İlham",
  "Əliyev Rəsul Rauf",
  "Ələkbərli Toğrul Oqtay",
  "Əsədli Şəms Elnur"
];
  
  List<String> students606 = [
  "Abbasova Hürnüsə Bəhruz",
  "Bağırova Nuray Asim",
  "Cəbrayılov Mayıl Şənər",
  "Cəfərov Hafiz Babək",
  "Eyvazlı Rəvan Qənbər",
  "Hacıyeva Nurlana Elmir",
  "Hüseynzadə Aydan Namiq",
  "Mehdiyev Ceyhun Ruslan",
  "Nəcəfli Aygün Savalan",
  "Orucova Lalə Qalib",
  "Orucova Nərmin Ramil",
  "Rzayev Xəyal Faiq",
  "Rzazadə Nisə Rafiq",
  "Sultanov Kənan Emil",
  "İsmayılov Amir Anar",
  "İsmayılov Ömər Asif",
  "Şirinzadə Nemət Akif",
  "Şirəli Zəhra Şirin",
  "Əhmədova Əminə Ədalət",
  "Əliyev Dəniz Arif",
  "Əsgərzadə Firudin Fuad",
  "Əsədov Şəmil Məhərrəm",
  "Əsədova Əminə Bəhrəm"
];

  //
  problemNoAssigner(students604);
 
}
