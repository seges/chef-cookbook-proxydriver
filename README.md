proxydriver Cookbook
========================
The cookbook manages proxydriver configurations.

http://marin.jb.free.fr/proxydriver/

Requirements
------------

It is independend so far.

Resource
----------

The default proxydriver resource creates a configuration file with attribute names/values equal to the ones that belong to the template.

You can find all attribute names in the proxydriver.conf.erb template or in attributes/default.rb.

By default the resource enables the proxy which is just the opposite behaviour of default creation by proxydriver itself. In this case it makes sense to enable it by default because that is your real intention - to configure the proxy.

```ruby
proxydriver "my-wifi" do
  proxy "192.168.34.3"
  ignorelist "localhost, google.com"
end
```


Usage
-----
#### proxydriver::default
Just include `proxydriver` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[proxydriver]"
  ]
}

```

It installs the version of proxydriver on your system.

Contributing
------------

1. Fork the repository on Github - https://github.com/seges/chef-cookbook-proxydriver
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author:: Ladislav Gazo (<gazo@seges.sk>)
Copyright:: 2014, Seges Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


