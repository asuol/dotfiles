def Settings( **kwargs ):
      return {
              # c and c++ global settings
              'flags': [ '-x', 'c++', '-Wall', '-Wextra', '-Werror' ],
              
              # python global settings
              #
              # uncomment for third party packages
              #'sys_path': [
              #          '/path/to/some/third_party/package',
              #          '/path/to/another/third_party/package'
              #        ]

              
            }
