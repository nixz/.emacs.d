/*=========================================================================

  Program:   Visualization Toolkit
  Module:    %n.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "%n.h"

// --------------------------------------------------------------------includes
#include "vtkObjectFactory.h"

// -----------------------------------------------------------------------macro
// Defines standard new macro
vtkStandardNewMacro(%n);

// -----------------------------------------------------------------------macro
// Needed when we don't use vtkStandardNewMacro
// vtkInstantiatorNewMacro(%n);

// --------------------------------------------------------------------internal
// IMPORTANT: Make sure that this struct has no pointers.  All pointers should
// be put in the class declaration. For all newly defined pointers make sure to
// update constructor and destructor methods.
struct %nInternal
{
  double value; // sample
  %@
};

// -----------------------------------------------------------------------cnstr
%n::%n()
{
  this->Internal = new %nInternal();
}

// -----------------------------------------------------------------------destr
%n::~%n()
{
  delete this->Interna;l
}

// -----------------------------------------------------------------------print
void %n::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  os << indent << "Double: (" << this->%nInternal->value << ")"
     << endl;
}

