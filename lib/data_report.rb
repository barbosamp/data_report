#Marcos Barbosa
#08/12/2017

require 'json'
 @file = JSON.parse(File.read("features_report.json"))
def get_step_status
  @scenarios =[]
     @file.each do |feature|
       feature['elements'].each do |scenario|
         scenario['steps'].each do |step|
           p step['result']['status']
         end
       end
     end
end

def get_step_name
  @scenarios =[]
     @file.each do |feature|
       feature['elements'].each do |scenario|
         scenario['steps'].each do |step|
           p step['keyword']+step['name']
         end
       end
     end
end

def get_step_duration
  @scenarios =[]
     @file.each do |feature|
       feature['elements'].each do |scenario|
         scenario['steps'].each do |step|
           p step['result']['duration']
         end
       end
     end
end

def get_scenario_name
  @scenarios =[]
     @file.each do |feature|
       feature['elements'].each do |scenario|
         p scenario['name']
       end
     end
end
