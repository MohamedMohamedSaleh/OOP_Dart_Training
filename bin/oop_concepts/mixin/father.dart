import 'walk_to_house.dart';
import 'walk_to_work.dart';
import 'work_in_company.dart';
import 'work_in_house.dart';
/*mixin => a programming concept used in object-oiented languages to 
             enable the reuse of code and functionality in multiple classes
             without using traditional inheritance.

  mixin => ia abstract class 
  notes => when use multi inheritance: I use mixin
  */

class Father with WalkToHouse, WalkToWork, WorkInCompany, WorkInHouse {
  @override
  void printWorkInHouse() {
    // TODO: implement printWorkInHouse
  }
}
