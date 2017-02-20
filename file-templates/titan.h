/**********************************************************************
 This source file is part of the Titan Toolkit

 Copyright 2010 Sandia Corporation.  Under the terms of Contract
 DE-AC04-94AL85000 with Sandia Corporation, the U.S. Government
 retains certain rights in this software.

 This source code is released under the New BSD License.
 **********************************************************************/

#ifndef  __%n_h
# define __%n_h

//----------------------------------------------------------------titan
namespace titan{

  class %nInternal;

  //--------------------------------------------------------------class
  /// \class %n %b <Marks/%b>
  /// \brief

  /// %[Responsibility: %]
  ///
  class TITAN_MARKS_EXPORT %n %@
  {
  public:
    /// Constructor
    %n();

    /// Copy-Constructor
    %n( const %n& rhs );

    /// Destructor
    virtual ~%n();

    /// Copy-Assignment-Operator
    %n operator=( const %n& rhs);

    /// Default Print Method
    void Print();

  private:
    %nInternal *Internal;
  };
}

#endif // __%n_h
