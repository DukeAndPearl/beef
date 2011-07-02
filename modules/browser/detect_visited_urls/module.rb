#
#   Copyright 2011 Wade Alcorn wade@bindshell.net
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
class Detect_visited_urls < BeEF::Core::Command
  
  def initialize
    super({
      'Name' => 'Detect Visited URLs',
      'Description' => 'This module will detect whether or not the zombie has visited the specifed URL(s) before.',
      'Category' => 'Browser',
      'Author' => ['passbe'],
      'Data' => [
        { 'ui_label'=>'URL(s)', 'name'=>'urls', 'type'=>'textarea', 'value'=>'http://www.bindshell.net/', 'width'=>'200px' }
      ],
      'File' => __FILE__
    })    
         
    set_target({
     'verified_status' =>  VERIFIED_WORKING, 
     'browser_name' =>     ALL
    })
              
    use_template!
  end

  def callback
    save({'result' => @datastore['result']})
  end
  
end