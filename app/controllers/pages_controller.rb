class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]

    def index
        @user = User.new
        @user.name = 'sathiyaseelan'
        @user.email = 'ssstarlet@gmail.com'
        @user.brand_statement = 'Full stack developer with 4 years experience!'
        @user.summary = 'Sathiyaseelan (alias Sathya) has over 4 years of experience in product and tools development in insurance and cable/video domain using Java enterprise Technologies.
                        He considered himself always as a student and he is currently learning Ruby on Rails.
                        He participates in Competitive coding in various sites in his leisure time.' + '</span><span>' +
                        'Currently working in Deloitte as Consultant.
                        <span>Worked as Senior Systems Engineer in Infosys and responsible for creating automation solutions which involves analysing the devices and components involved in the cable architecture and developing automation solutions for test and monitoring purposes.</span>
                        <span>Previously, worked as Software Engineer in Solartis, where he developed the web services for Insurance workflow using Java Enterprise technologies and also involved in new technology evaluation , creating proof of concepts and framework development with nextgen technologies such as Alfresco, ActiveMQ, Apache Camel.</span></span>'


        @user.experiences = []
        @user.experiences << { :company => 'Deloitte', :designation => 'Consultant',
                                :from => 'May-2016', :to => 'current', :summary => 'Working as Technical consultant,developing spring basd applications', :logo_url => 'https://media.licdn.com/media/AAEAAQAAAAAAAAj5AAAAJDgyZWRhYTRmLWUyNGUtNDVhMy1hZTdhLTYwNGFjOTY5M2Y4ZQ.png'}
        @user.experiences << { :company => 'Infosys', :designation => 'Senior systems Engineer',
                                :from => 'August-2014', :to => 'April-2016', :summary => 'Worked as part of automation framework development team',  :logo_url => 'https://media.licdn.com/media/AAEAAQAAAAAAAALvAAAAJGIxZTU4OGNmLTQ1OGEtNDEwNy05NDNhLWU3MjcwYWQxY2ExNg.png'}
        @user.experiences << { :company => 'Solartis', :designation => 'Software Engineer',
                                :from => 'May-2012', :to => 'August-2014', :summary => 'Worked as part of core business application development team and part of innovation team', :logo_url => 'https://media.licdn.com/media/AAEAAQAAAAAAAAYBAAAAJDc3YzQxMjAxLTZkZTEtNDdkZS04OWM3LTQ3Nzc1M2MzMjlkZQ.png'}
        @user.skills = []
        @user.skills << {name: 'Java'}
        @user.skills << {name: 'JEE'}
        @user.skills << {name: 'Ruby on Rails'}
        @user.skills << {name: 'MySQL'}
        @user.skills << {name: 'MongoDB'}
        @user.skills << {name: 'HTML'}
        @user.skills << {name: 'CSS'}
        @user.skills << {name: 'Javascript'}
        @user.skills << {name: 'JQuery'}
        @user.skills << {name: 'Bootsrap'}

        @user.certificates = []
        @user.certificates << {name: 'Algorithmic Thinking-1', organization: 'Coursera', url: 'https://www.coursera.org/account/accomplishments/verify/UQB9XQUTTH'}
        @user.certificates << {name: 'Algorithmic Thinking-2', organization: 'Coursera', url: 'https://www.coursera.org/account/accomplishments/verify/26B35CATGY'}
        @user.certificates << {name: 'Complete RoR Developer', organization: 'Udemy', url: 'https://www.udemy.com/certificate/UC-RZJC1NW2/'}
        @user.certificates << {name: 'Develop RWD site with HTML5, XSS3 & Boostrap', organization: 'Udemy', url: 'https://www.udemy.com/certificate/UC-VLZ4V5YK/'}
        @user.recommendations = []
        @user.recommendations << {name: 'Adheep M',img_url: 'https://media.licdn.com/mpr/mpr/shrinknp_100_100/AAEAAQAAAAAAAAcdAAAAJDFjMzEyYjczLTJkYTMtNGFlNC1hODlmLWNlNTJjNGY5ZjRiYg.jpg',
                                    designation: 'Associate Architect',
                                    company: 'Solartis Inc', statement: 'Highly passionate person who always have alternative solutions when there is a technical issue.
                                                                        Whenever I assign him a task I never have to follow up with him
                                                                        since Sathiyaseelan completes them on time with perfect quality.'}
        @user.recommendations << {name: 'Ronald Brown',img_url: 'https://media.licdn.com/mpr/mpr/shrinknp_100_100/p/1/000/02a/0b6/219c8e0.jpg',
                                designation: 'Quality Assurance Lead - Senior Engineer VOD Back Office',
                                    company: 'Comcast', statement: 'Sathiya has been a major contributor to getting our new automation framework up and running.
                                    He has written very efficient java code and helped us to expand our testing tools.
                                    Sathiya has worked in the agile test environment and has a good understanding of working with Kanban boards.
                                Sathiya can get up to speed quickly with new automation technologies and can come up with good proposals for software design solutions'}

    end
end
