
class StackBrain{
   List<String> _data = List<String>();

    //Add
   void push(String element){
     _data.add(element);
   }

  //Current sizer of the stack
  int returnSize(){
   return _data.length;
  }

  //Check if empty
  bool isEmpty(){
    return _data.length == 0;
  }

  //Delete // Pop element
  String pop(){
    if(isEmpty()){
      return '';
    }
    String poppedElement = _data.last;
    _data.removeLast();
    return poppedElement;
  }

  //Return Top element
  String top(){
    if(isEmpty()){
      return '';
    }
    return _data.last;
  }
}