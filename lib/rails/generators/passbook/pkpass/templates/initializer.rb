
#  Copyright 2012 Xtreme Labs

#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.




Passbook::Config.instance.add_pkpass do |passbook|
  passbook.pass_config["<%= pass_type_id %>"]={
                              "cert_path"=>"<%= cert_path.blank? ? "#{Rails.root}/data/certificates/#{pass_type_id}.p12" : cert_path %>",
                              "cert_password"=>"<%= cert_password %>",
                              "template_path"=>"<%= "#{Rails.root}/data/templates/#{pass_type_id}" %>",
                              "class"=>"<%= class_name %>"
                            }

end
