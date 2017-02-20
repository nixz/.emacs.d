/**********************************************************************
 This source file is part of the Titan Toolkit

 Copyright 2010 Sandia Corporation.  Under the terms of Contract
 DE-AC04-94AL85000 with Sandia Corporation, the U.S. Government
 retains certain rights in this software.

 This source code is released under the New BSD License.
 **********************************************************************/

#include "%n.h"
//----------------------------------------------------------------titan
namespace titan {

  //------------------------------------------------------------attribs
  // IMPORTANT: Make sure that this struct has no pointers.
  // All pointers should be put in the class declaration for
  // RAII (Resource Allocation Is Invocation). For all newly
  // defined pointers make sure to update constructor,
  // copy-constructor and copy-assignment methods.
  struct %nInternal
  {
    double value; // sample
    %@
  };

  //--------------------------------------------------------------cnstr
  %n::%n()
  {
    this->Internal = new %nInternal();
  }

  //---------------------------------------------------------copy-cnstr
  %n::%n( const %n& rhs )
  {
    this->Internal = new %nInternal();
    this->Internal->value = rhs.Internal->value;
  }

  //--------------------------------------------------------------destr
  %n::~%n()
  {
    delete this->Internal;
  }

  //----------------------------------------------------copy-assignment
  %n& %n::operator=( const %n& rhs )
  {
    if ( this!=&rhs ) //Protect against self assignment
      {
      // 1: allocate new memory and copy the elements
      %nInternal *temp = new %nInternal();
      temp->value = rhs.Internal->value;
      // 2: deallocate old memory
      delete this->Internal;
      // 3: assign the new memory to the object
      this->Internal = temp;
    return *this;
  }

  //--------------------------------------------------------------print
  void %n::Print()
  {
    cout<< this-Internal->value <<endl;
  }

}
