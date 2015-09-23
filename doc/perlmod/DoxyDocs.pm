$doxydocs=
{
  classes => [
    {
      name => 'std::allocator',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::allocator'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::array',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::array'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::auto_ptr',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'operator->',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::auto_ptr'
        },
        {
          name => 'ptr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::auto_ptr'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'operator->',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T*',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'ptr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::bad_alloc',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::bad_cast',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::bad_exception',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::bad_typeid',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_fstream',
      base => [
        {
          name => 'basic_iostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'fstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wfstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_ifstream',
      base => [
        {
          name => 'basic_istream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ifstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wifstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_ios',
      base => [
        {
          name => 'ios_base',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'basic_istream<char  >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<char >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<char>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<wchar_t  >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<wchar_t >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<wchar_t>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<char  >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<char >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<char>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<wchar_t  >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<wchar_t >',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<wchar_t>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_istream<Char>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<Char>',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ios',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wios',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_iostream',
      base => [
        {
          name => 'basic_istream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'basic_fstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_fstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_stringstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_stringstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_fstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_stringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_istream',
      base => [
        {
          name => 'basic_ios<Char>',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'basic_ifstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ifstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_iostream<char >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_iostream<wchar_t >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_istringstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_istringstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ifstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_iostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_istringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'istream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wistream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_istringstream',
      base => [
        {
          name => 'basic_istream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'istringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wistringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_ofstream',
      base => [
        {
          name => 'basic_ostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ofstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wofstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_ostream',
      base => [
        {
          name => 'basic_ios<Char>',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'basic_iostream<char >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_iostream<wchar_t >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ofstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ofstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostringstream<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostringstream<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_iostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ofstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ostringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ostream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wostream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_ostringstream',
      base => [
        {
          name => 'basic_ostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ostringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wostringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_string',
      derived => [
        {
          name => 'string',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wstring',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
        {
          name => 'std::basic_string::const_iterator'
        },
        {
          name => 'std::basic_string::const_reverse_iterator'
        },
        {
          name => 'std::basic_string::iterator'
        },
        {
          name => 'std::basic_string::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_string::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_string::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_string::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_string::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::basic_stringstream',
      base => [
        {
          name => 'basic_iostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'stringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'wstringstream',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Char',
          definition_name => 'Char'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::bitset',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'Bits',
          definition_name => 'Bits'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::complex',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::deque',
      inner => [
        {
          name => 'std::deque::const_iterator'
        },
        {
          name => 'std::deque::const_reverse_iterator'
        },
        {
          name => 'std::deque::iterator'
        },
        {
          name => 'std::deque::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::deque'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::deque::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::deque::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::deque::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::deque::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::domain_error',
      base => [
        {
          name => 'logic_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::error_category',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::error_code',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::error_condition',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::exception',
      derived => [
        {
          name => 'bad_alloc',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'bad_cast',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'bad_exception',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'bad_typeid',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ios_base::failure',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'logic_error',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'runtime_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::forward_list',
      inner => [
        {
          name => 'std::forward_list::const_iterator'
        },
        {
          name => 'std::forward_list::const_reverse_iterator'
        },
        {
          name => 'std::forward_list::iterator'
        },
        {
          name => 'std::forward_list::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::forward_list'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::forward_list::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::forward_list::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::forward_list::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::forward_list::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::fstream',
      base => [
        {
          name => 'basic_fstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ifstream',
      base => [
        {
          name => 'basic_ifstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::invalid_argument',
      base => [
        {
          name => 'logic_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ios',
      base => [
        {
          name => 'basic_ios<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ios_base',
      derived => [
        {
          name => 'basic_ios<char  >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<char >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<char>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<wchar_t  >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<wchar_t >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<wchar_t>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'basic_ios<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
        {
          name => 'std::ios_base::failure'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ios_base::failure',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::istream',
      base => [
        {
          name => 'basic_istream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::istringstream',
      base => [
        {
          name => 'basic_istringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::length_error',
      base => [
        {
          name => 'logic_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::list',
      inner => [
        {
          name => 'std::list::const_iterator'
        },
        {
          name => 'std::list::const_reverse_iterator'
        },
        {
          name => 'std::list::iterator'
        },
        {
          name => 'std::list::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::list'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::list::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::list::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::list::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::list::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::logic_error',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'domain_error',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'invalid_argument',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'length_error',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'out_of_range',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::map',
      inner => [
        {
          name => 'std::map::const_iterator'
        },
        {
          name => 'std::map::const_reverse_iterator'
        },
        {
          name => 'std::map::iterator'
        },
        {
          name => 'std::map::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        },
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::map'
        },
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::map'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          },
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::map::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::map::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::map::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::map::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multimap',
      inner => [
        {
          name => 'std::multimap::const_iterator'
        },
        {
          name => 'std::multimap::const_reverse_iterator'
        },
        {
          name => 'std::multimap::iterator'
        },
        {
          name => 'std::multimap::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        },
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::multimap'
        },
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::multimap'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          },
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multimap::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multimap::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multimap::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multimap::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multiset',
      inner => [
        {
          name => 'std::multiset::const_iterator'
        },
        {
          name => 'std::multiset::const_reverse_iterator'
        },
        {
          name => 'std::multiset::iterator'
        },
        {
          name => 'std::multiset::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        }
      ],
      all_members => [
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::multiset'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multiset::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multiset::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multiset::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::multiset::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ofstream',
      base => [
        {
          name => 'basic_ofstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ostream',
      base => [
        {
          name => 'basic_ostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::ostringstream',
      base => [
        {
          name => 'basic_ostringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::out_of_range',
      base => [
        {
          name => 'logic_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::overflow_error',
      base => [
        {
          name => 'runtime_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::priority_queue',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::priority_queue'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::queue',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::queue'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::range_error',
      base => [
        {
          name => 'runtime_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::runtime_error',
      base => [
        {
          name => 'exception',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'overflow_error',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'range_error',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'underflow_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::set',
      inner => [
        {
          name => 'std::set::const_iterator'
        },
        {
          name => 'std::set::const_reverse_iterator'
        },
        {
          name => 'std::set::iterator'
        },
        {
          name => 'std::set::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        }
      ],
      all_members => [
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::set'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::set::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::set::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::set::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::set::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::smart_ptr',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'operator->',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::smart_ptr'
        },
        {
          name => 'ptr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::smart_ptr'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'operator->',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T*',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'ptr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::stack',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::stack'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::string',
      base => [
        {
          name => 'basic_string<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
        {
          name => 'std::string::const_iterator'
        },
        {
          name => 'std::string::const_reverse_iterator'
        },
        {
          name => 'std::string::iterator'
        },
        {
          name => 'std::string::reverse_iterator'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::string::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::string::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::string::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::string::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::stringstream',
      base => [
        {
          name => 'basic_stringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::system_error',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::thread',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::underflow_error',
      base => [
        {
          name => 'runtime_error',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unique_ptr',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'operator->',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unique_ptr'
        },
        {
          name => 'ptr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unique_ptr'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'operator->',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T*',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'ptr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_map',
      inner => [
        {
          name => 'std::unordered_map::const_iterator'
        },
        {
          name => 'std::unordered_map::const_reverse_iterator'
        },
        {
          name => 'std::unordered_map::iterator'
        },
        {
          name => 'std::unordered_map::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        },
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_map'
        },
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_map'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          },
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_map::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_map::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_map::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_map::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multimap',
      inner => [
        {
          name => 'std::unordered_multimap::const_iterator'
        },
        {
          name => 'std::unordered_multimap::const_reverse_iterator'
        },
        {
          name => 'std::unordered_multimap::iterator'
        },
        {
          name => 'std::unordered_multimap::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        },
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_multimap'
        },
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_multimap'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          },
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multimap::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multimap::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multimap::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multimap::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multiset',
      inner => [
        {
          name => 'std::unordered_multiset::const_iterator'
        },
        {
          name => 'std::unordered_multiset::const_reverse_iterator'
        },
        {
          name => 'std::unordered_multiset::iterator'
        },
        {
          name => 'std::unordered_multiset::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        }
      ],
      all_members => [
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_multiset'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multiset::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multiset::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multiset::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_multiset::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_set',
      inner => [
        {
          name => 'std::unordered_set::const_iterator'
        },
        {
          name => 'std::unordered_set::const_reverse_iterator'
        },
        {
          name => 'std::unordered_set::iterator'
        },
        {
          name => 'std::unordered_set::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'K',
          definition_name => 'K'
        }
      ],
      all_members => [
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::unordered_set'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'K'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_set::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_set::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_set::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::unordered_set::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::valarray',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::valarray'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::vector',
      inner => [
        {
          name => 'std::vector::const_iterator'
        },
        {
          name => 'std::vector::const_reverse_iterator'
        },
        {
          name => 'std::vector::iterator'
        },
        {
          name => 'std::vector::reverse_iterator'
        }
      ],
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'elements',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::vector'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'elements',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::vector::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::vector::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::vector::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::vector::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::weak_ptr',
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'operator->',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::weak_ptr'
        },
        {
          name => 'ptr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'std::weak_ptr'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'operator->',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T*',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'ptr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'STL member. '
                }
              ]
            },
            detailed => {},
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wfstream',
      base => [
        {
          name => 'basic_fstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wifstream',
      base => [
        {
          name => 'basic_ifstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wios',
      base => [
        {
          name => 'basic_ios<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wistream',
      base => [
        {
          name => 'basic_istream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wistringstream',
      base => [
        {
          name => 'basic_istringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wofstream',
      base => [
        {
          name => 'basic_ofstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wostream',
      base => [
        {
          name => 'basic_ostream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wostringstream',
      base => [
        {
          name => 'basic_ostringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstring',
      base => [
        {
          name => 'basic_string<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
        {
          name => 'std::wstring::const_iterator'
        },
        {
          name => 'std::wstring::const_reverse_iterator'
        },
        {
          name => 'std::wstring::iterator'
        },
        {
          name => 'std::wstring::reverse_iterator'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstring::const_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstring::const_reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstring::iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstring::reverse_iterator',
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL iterator class. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'std::wstringstream',
      base => [
        {
          name => 'basic_stringstream<Char>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL class. '
          }
        ]
      },
      detailed => {}
    }
  ],
  namespaces => [
    {
      name => 'std',
      classes => [
        {
          name => 'std::allocator'
        },
        {
          name => 'std::array'
        },
        {
          name => 'std::auto_ptr'
        },
        {
          name => 'std::bad_alloc'
        },
        {
          name => 'std::bad_cast'
        },
        {
          name => 'std::bad_exception'
        },
        {
          name => 'std::bad_typeid'
        },
        {
          name => 'std::basic_fstream'
        },
        {
          name => 'std::basic_ifstream'
        },
        {
          name => 'std::basic_ios'
        },
        {
          name => 'std::basic_iostream'
        },
        {
          name => 'std::basic_istream'
        },
        {
          name => 'std::basic_istringstream'
        },
        {
          name => 'std::basic_ofstream'
        },
        {
          name => 'std::basic_ostream'
        },
        {
          name => 'std::basic_ostringstream'
        },
        {
          name => 'std::basic_string'
        },
        {
          name => 'std::basic_stringstream'
        },
        {
          name => 'std::bitset'
        },
        {
          name => 'std::complex'
        },
        {
          name => 'std::deque'
        },
        {
          name => 'std::domain_error'
        },
        {
          name => 'std::error_category'
        },
        {
          name => 'std::error_code'
        },
        {
          name => 'std::error_condition'
        },
        {
          name => 'std::exception'
        },
        {
          name => 'std::forward_list'
        },
        {
          name => 'std::fstream'
        },
        {
          name => 'std::ifstream'
        },
        {
          name => 'std::invalid_argument'
        },
        {
          name => 'std::ios'
        },
        {
          name => 'std::ios_base'
        },
        {
          name => 'std::istream'
        },
        {
          name => 'std::istringstream'
        },
        {
          name => 'std::length_error'
        },
        {
          name => 'std::list'
        },
        {
          name => 'std::logic_error'
        },
        {
          name => 'std::map'
        },
        {
          name => 'std::multimap'
        },
        {
          name => 'std::multiset'
        },
        {
          name => 'std::ofstream'
        },
        {
          name => 'std::ostream'
        },
        {
          name => 'std::ostringstream'
        },
        {
          name => 'std::out_of_range'
        },
        {
          name => 'std::overflow_error'
        },
        {
          name => 'std::priority_queue'
        },
        {
          name => 'std::queue'
        },
        {
          name => 'std::range_error'
        },
        {
          name => 'std::runtime_error'
        },
        {
          name => 'std::set'
        },
        {
          name => 'std::smart_ptr'
        },
        {
          name => 'std::stack'
        },
        {
          name => 'std::string'
        },
        {
          name => 'std::stringstream'
        },
        {
          name => 'std::system_error'
        },
        {
          name => 'std::thread'
        },
        {
          name => 'std::underflow_error'
        },
        {
          name => 'std::unique_ptr'
        },
        {
          name => 'std::unordered_map'
        },
        {
          name => 'std::unordered_multimap'
        },
        {
          name => 'std::unordered_multiset'
        },
        {
          name => 'std::unordered_set'
        },
        {
          name => 'std::valarray'
        },
        {
          name => 'std::vector'
        },
        {
          name => 'std::weak_ptr'
        },
        {
          name => 'std::wfstream'
        },
        {
          name => 'std::wifstream'
        },
        {
          name => 'std::wios'
        },
        {
          name => 'std::wistream'
        },
        {
          name => 'std::wistringstream'
        },
        {
          name => 'std::wofstream'
        },
        {
          name => 'std::wostream'
        },
        {
          name => 'std::wostringstream'
        },
        {
          name => 'std::wstring'
        },
        {
          name => 'std::wstringstream'
        }
      ],
      namespaces => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'STL namespace. '
          }
        ]
      },
      detailed => {}
    }
  ],
  files => [
    {
      name => 'cdcoeff.c',
      includes => [
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'cdcoeff',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'calculation of CD coefficients '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'm'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'order of the derivatives, m=1,2,3,4 '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'order of spatial accuray, e.g., n=4, 10 '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'int'
              },
              {
                declaration_name => 'n',
                type => 'int'
              },
              {
                declaration_name => 'cc',
                type => 'double *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cdcoeff_stg',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'int'
              },
              {
                declaration_name => 'n',
                type => 'int'
              },
              {
                declaration_name => 'cc',
                type => 'double *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'factorial',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'calculate factorial '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'm'
                      }
                    ],
                    doc => [
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'fact'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'swcdshot2.cpp',
      includes => [
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'absorb',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ntap',
                type => 'int'
              },
              {
                declaration_name => 'nx',
                type => 'int'
              },
              {
                declaration_name => 'nz',
                type => 'int'
              },
              {
                declaration_name => 'taper',
                type => 'float *'
              },
              {
                declaration_name => 'p',
                type => 'float **'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cd_coeff_scalar',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'np',
                type => 'int'
              },
              {
                declaration_name => 'd',
                type => 'float *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cerjan',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ntap',
                type => 'int'
              },
              {
                declaration_name => 'coeff',
                type => 'float'
              },
              {
                declaration_name => 'taper',
                type => 'float *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'extenModel',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'nx',
                type => 'int'
              },
              {
                declaration_name => 'nz',
                type => 'int'
              },
              {
                declaration_name => 'ntap',
                type => 'int'
              },
              {
                declaration_name => 'v',
                type => 'float **'
              },
              {
                declaration_name => 'vv',
                type => 'float **'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_file_snap',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'dest',
                type => 'char *'
              },
              {
                declaration_name => 'src',
                type => 'char *'
              },
              {
                declaration_name => 'num',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'hanning',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'n',
                type => 'int'
              },
              {
                declaration_name => 'w',
                type => 'float *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'argc',
                type => 'int'
              },
              {
                declaration_name => 'argv',
                type => 'char **'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ricker1_wavelet',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'nt',
                type => 'int'
              },
              {
                declaration_name => 'dt',
                type => 'float'
              },
              {
                declaration_name => 'fpeak',
                type => 'float'
              },
              {
                declaration_name => 'wavelet',
                type => 'float *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'src_spatial_distribution',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'nx',
                type => 'int'
              },
              {
                declaration_name => 'nz',
                type => 'int'
              },
              {
                declaration_name => 'ixs',
                type => 'int'
              },
              {
                declaration_name => 'izs',
                type => 'int'
              },
              {
                declaration_name => 's',
                type => 'float **'
              }
            ]
          },
          {
            kind => 'function',
            name => 'time_one_step_cd',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'nx',
                type => 'int'
              },
              {
                declaration_name => 'nz',
                type => 'int'
              },
              {
                declaration_name => 'dt',
                type => 'float'
              },
              {
                declaration_name => 'dx',
                type => 'float'
              },
              {
                declaration_name => 'dz',
                type => 'float'
              },
              {
                declaration_name => 'np',
                type => 'int'
              },
              {
                declaration_name => 'd',
                type => 'float *'
              },
              {
                declaration_name => 'v',
                type => 'float **'
              },
              {
                declaration_name => 'pp',
                type => 'float **'
              },
              {
                declaration_name => 'pm',
                type => 'float **'
              },
              {
                declaration_name => 'p',
                type => 'float **'
              }
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'sdoc',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char*',
            arguments => '[]',
            initializer => '=
{
    " 									",
    " SWFDSHOT2 - Synthetize a 2D shot record with regular grid CD",
    " 									",
    " swfdshot2 <file_vel >file_seis nxmod= nzmod=	",
    " dt= nt= xs= zs= file_snap= [optional parameters]	",
    " 									",
    " Required Parameters:							",
    " <file_vel		file containing velocity model	",
    " >file_seis		file containing shot record[nx][nt]		",
    " nxmod=			number of x samples (2nd dimension)		",
    " nzmod=			number of z samples (1st dimension)		",
    " file_snap=	snapshot of forward modeling	",
    " dt= ",
    " nt= ",
    " xs=			source x position. if not set, from header	",
    " zs=0			source z position.	",
    " 									",
    " Optional Parameters:							",
    " mt=1			number of time steps (dt) per output time step	",
    " dx=10.0		x sampling interval				",
    " fx=0.0		first x sample					",
    " dz=10.0		z sampling interval				",
    " fz=0.0		first z sample					",
    " 									",
    " fpeak=20Hz	peak frequency in ricker wavelet		",
    " fmax=2.0*fpeak	the maximum frequency				",
    " tdelay=0		time delay for wavelet		",
    " np=9		    point number of CD operator		",
    " hsz=			z coordinate of horizontal line of seismograms	",
    " vsx=			x coordinate of vertical line of seismograms",
    " 									",
    " ntap=45		number of grids for taper	",
    " coeff=0.053	attenuation coefficient	",
    " verbose=0		=1 for diagnostic messages;	",
    " 									",
    " Notes:								",
    " 									",
    " Weijia Sun",
    " Email: swj@mail.iggcas.ac.cn						",
    " Date: Aug 9, 2012	Rev: 1.0"
    " 									", 	NULL
}'
          },
          {
            kind => 'variable',
            name => 'tr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'segy'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
