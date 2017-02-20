/*=========================================================================

  Program:   Visualization Toolkit
  Module:    %n.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME %n - %[Brief: %]
// .SECTION Description
// %n %[Description: %]

#ifndef __%n_h
#define __%n_h
// --------------------------------------------------------------------includes
#include "vtkObject.h"

// -----------------------------------------------------------------pre-defines
class %nInternal;

// -----------------------------------------------------------------------class
class VTK_COMMON_EXPORT %n : public vtkObject
{
public:
  // ............................................................public-methods
  static %n* New();
  vtkTypeMacro(%n, vtkObject);
  void PrintSelf(ostream& os, vtkIndent indent);

protected:
  // ...........................................................protected-ivars

protected:
//BTX
  // .......................................................................BTX
  %n();
  ~%n();

private:
  %nInternal *Internal;
  %n(const %n&); // Not implemented.
  void operator=(const %n&); // Not implemented.
//ETX
  // .......................................................................ETX


};

#endif // __%n_h
