// ============================================================================
/**
 * @file   %n.cpp
 *
 * @section COPYRIGHT
 *
 * Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
 * All rights reserved.
 * See Copyright.txt or http://www.kitware.com/Copyright.htm for details.
 *
 *   This software is distributed WITHOUT ANY WARRANTY; without even
 *   the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 *   PURPOSE.  See the above copyright notice for more information.
 *
 * @author nikhil shetty <nikhil.shetty@kitware.com>
 */
// ============================================================================
#include "vsg/%[NAMESPACE: %]/%n.h"
// --------------------------------------------------------------------includes

namespace vsg {
  namespace %[NAMESPACE: %] {
    // -------------------------------------------------------------------macro

    // ................................................................internal
    // IMPORTANT: Make sure that this struct has no pointers.  All pointers should
    // be put in the class declaration. For all newly defined pointers make sure
    // to update constructor and destructor methods.
    struct %nInternal
    {
      double value; // sample
      %@
    };
    // ................................................................internal

    // -------------------------------------------------------------------cnstr
    %n::%n()
       {
         _internal = new %nInternal();
       }

    // -------------------------------------------------------------------destr
    %n::~%n()
       {
         delete _internal;
       }

    // ------------------------------------------------------------------public
    // -----------------------------------------------------------------private
  }
}
