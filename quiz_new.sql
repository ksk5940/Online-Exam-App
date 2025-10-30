-- phpMyAdmin SQL Dump

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--
CREATE TABLE IF NOT EXISTS `mst_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mst_admin`
--
INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', 'Sree');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--
CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--
CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mst_subject`
--
INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'Linux'),
(2, 'Shell-Scripting'),
(3, 'Maven'),
(4, 'SonarQube'),
(5, 'Nexus'),
(6, 'Tomcat'),
(7, 'Jenkins'),
(8, 'Docker');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--
CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `mst_question`
--
INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, 1, 'Which Linux command lists all files, including hidden ones?', 'ls -l', 'ls -a', 'ls -h', 'ls -s', 2),
(2, 1, 'How do you display the contents of a file?', 'cat', 'ls', 'rm', 'pwd', 1),
(3, 1, 'What is the root directory symbol?', '/', '~', '.', '..', 1),
(4, 1, 'Which command is used to change permissions?', 'chmod', 'chown', 'chperm', 'ps', 1),
(5, 1, 'To find your current working directory:', 'cd', 'which', 'pwd', 'dir', 3),
(6, 1, 'Which process ID is reserved for the swapper or scheduler?', '0', '1', '-1', '100', 1),
(7, 1, 'How to display running processes?', 'ps', 'show', 'jobs', 'list', 1),
(8, 1, 'What does the "grep" command do?', 'Find files', 'Search text', 'Compress files', 'Archive files', 2),
(9, 1, 'Which command shows the disk usage?', 'diskfree', 'df', 'du', 'ls -d', 3),
(10, 1, 'How do you search for a pattern in files recursively?', 'find', 'grep -r', 'locate', 'awk', 2),
(11, 1, 'Which user has all permissions?', 'admin', 'super', 'root', 'owner', 3),
(12, 1, 'How to terminate a process by PID?', 'kill', 'stop', 'end', 'killall', 1),
(13, 1, 'Command to see last system logins?', 'history', 'login', 'last', 'w', 3),
(14, 1, 'Default port for SSH?', '21', '22', '80', '23', 2),
(15, 1, 'See memory usage summary?', 'free', 'top', 'vmstat', 'swap', 1),
(16, 1, 'How to view current running kernel version?', 'uname -r', 'version', 'kernel', 'ver', 1),
(17, 1, 'Create a new empty file?', 'touch', 'newfile', 'make', 'create', 1),
(18, 1, 'Which file maps hostnames to IP addresses?', '/etc/hosts', '/etc/hostname', '/etc/passwd', '/etc/ip', 1),
(19, 1, 'What is cron used for?', 'Firewall', 'Scheduled jobs', 'Monitoring', 'User management', 2),
(20, 1, 'Copy file.txt to /tmp?', 'mv file.txt /tmp', 'cp file.txt /tmp', 'move file.txt /tmp', 'copy file.txt /tmp', 2);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(21, 2, 'What is the default shell on most Linux systems?', 'bash', 'csh', 'ksh', 'zsh', 1),
(22, 2, 'What does "#!/bin/bash" at the start of a script indicate?', 'Shebang/interpreter', 'Function', 'Comment', 'Variable', 1),
(23, 2, 'How do you print "Hello World" to the terminal in shell?', 'echo Hello World', 'print Hello World', 'puts Hello World', 'type Hello World', 1),
(24, 2, 'How do you assign value to a variable in shell?', 'let x=5', 'x:=5', 'x=5', 'var x=5', 3),
(25, 2, 'Which symbol is used to capture command output into a variable?', '$()', '()', '{}', '[]', 1),
(26, 2, 'How do you make a script executable?', 'chmod +x script.sh', 'run script.sh', 'make script.sh', 'compile script.sh', 1),
(27, 2, 'Which loops are available in bash scripting?', 'for', 'while', 'until', 'All of the above', 4),
(28, 2, 'Which command is used to read input from user?', 'scanf', 'input', 'read', 'getline', 3),
(29, 2, 'How are comments written in shell scripts?', '*comment*', '// comment', '# comment', '-- comment', 3),
(30, 2, 'How do you schedule a script to run every day at 5 AM?', 'edit /etc/crontab', 'add to rc.local', 'at 5:00 script.sh', 'write in /bin', 1),
(31, 2, 'How do you pass an argument to shell script?', 'my.sh arg1', 'run my.sh arg1', 'start my.sh arg1', 'play my.sh arg1', 1),
(32, 2, 'In scripting, "$1" refers to:', 'File handle', '1st argument', 'Process ID', 'Line number', 2),
(33, 2, 'What does "exit 0" mean at script end?', 'Error occurred', 'Script succeeded', 'Script stopped', 'Loop done', 2),
(34, 2, 'How do you append text to a file?', 'echo hi > file', 'echo hi < file', 'echo hi >> file', 'add hi file', 3),
(35, 2, 'Which of these creates a new directory?', 'mkdir newdir', 'dir newdir', 'newdir', 'makedir newdir', 1),
(36, 2, 'How do you check if a file exists in shell?', '-e', '-f', '-d', '-s', 1),
(37, 2, 'What command gives present date and time?', 'date', 'time', 'clock', 'now', 1),
(38, 2, 'How to refer to all arguments given to a shell script?', '$@', '$*', '$#', '$$', 1),
(39, 2, 'Which is used for conditional branching?', 'if-else', 'case', 'switch', 'Both if-else and case', 4),
(40, 2, 'How do you continue to next iteration in a loop?', 'continue', 'skip', 'pass', 'goto', 1);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(41, 3, 'What is the configuration file for Maven projects?', 'build.xml', 'pom.xml', 'settings.xml', 'config.xml', 2),
(42, 3, 'Which command compiles the source code in Maven?', 'mvn build', 'mvn compile', 'mvn make', 'mvn run', 2),
(43, 3, 'What does "mvn clean" do?', 'Deletes target directory', 'Cleans code', 'Removes dependencies', 'Rebuilds project', 1),
(44, 3, 'Which element is used to declare dependencies in Maven?', '<dependencies>', '<resources>', '<config>', '<plugins>', 1),
(45, 3, 'How do you skip tests in Maven build?', '-DskipTests', '-DignoreTests', '-testSkip', '-skiplint', 1),
(46, 3, 'Which command creates the JAR file in Maven?', 'mvn jar', 'mvn build', 'mvn package', 'mvn install', 3),
(47, 3, 'What does "mvn install" do?', 'Install Maven', 'Install dependencies and build project', 'Deploy application', 'Update plugins', 2),
(48, 3, 'Where are Maven local artifacts stored?', '~/.m2/repository', '~/maven/', '/opt/m2/', '/usr/lib/maven', 1),
(49, 3, 'Which repository does Maven access by default?', 'Central', 'Snapshot', 'Corporate', 'SDK', 1),
(50, 3, 'What is the parent tag in pom.xml?', '<parent>', '<source>', '<project>', '<start>', 1),
(51, 3, 'Which section in pom.xml defines plugins?', '<dependencies>', '<pluginManagement>', '<plugins>', '<tools>', 3),
(52, 3, 'How are profiles set in Maven?', 'profile.xml', 'pom.xml profiles section', 'settings.xml', 'config.xml', 2),
(53, 3, 'Which Maven goal deploys built artifacts?', 'deploy', 'push', 'release', 'expose', 1),
(54, 3, 'To run integration tests, which phase is used?', 'test', 'verify', 'integration-test', 'check', 2),
(55, 3, 'How to specify a specific Maven repository?', 'update pom.xml', 'set in settings.xml', 'add in build.xml', 'set in jar manifest', 2),
(56, 3, 'Which tag defines project info?', '<project>', '<artifact>', '<info>', '<group>', 1),
(57, 3, 'What is a Maven "GroupId"?', 'Unique project group identifier', 'Artifact version', 'Jar format', 'Plugin version', 1),
(58, 3, 'How do you generate a site report in Maven?', 'mvn site', 'mvn build', 'mvn report', 'mvn info', 1),
(59, 3, 'Which phase runs after "compile"?', 'test', 'package', 'deploy', 'clean', 1),
(60, 3, 'What is Maven mainly used for?', 'Deployment automation', 'Project management & build automation', 'Plugin development', 'UI design', 2);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(61, 4, 'What type of analysis does SonarQube perform?', 'Dynamic', 'Static', 'Functional', 'Performance', 2),
(62, 4, 'Which file is generated by SonarQube for code analysis summary?', 'sonar.log', 'report.xml', 'sonar-report.json', 'analysis-summary.xml', 1),
(63, 4, 'What does a "Quality Gate" in SonarQube do?', 'Manages code repositories', 'Defines code quality thresholds', 'Automates builds', 'Executes tests', 2),
(64, 4, 'Which metric is NOT native to SonarQube?', 'Bugs', 'Vulnerabilities', 'Code Smells', 'CPU Usage', 4),
(65, 4, 'SonarQube uses which scanner for Maven builds?', 'sonar-scanner-cli', 'sonar-maven-plugin', 'sonar-py', 'sonar-gradle-plugin', 2),
(66, 4, 'How do you run SonarQube analysis from command line?', 'sonar analyze', 'sonar-scanner', 'sonar-runner', 'sonar build', 2),
(67, 4, 'Which language is NOT supported by SonarQube by default?', 'Java', 'Python', 'COBOL', 'HTML', 3),
(68, 4, 'What is "Code Smell" in SonarQube terms?', 'Coding style issue', 'Security bug', 'Syntax error', 'Build failure', 1),
(69, 4, 'What is the function of SonarQube server?', 'Host analysis agents', 'Centralize analysis & dashboards', 'Only store database', 'Perform builds', 2),
(70, 4, 'Which database is NOT supported by SonarQube?', 'PostgreSQL', 'Oracle', 'SQLite', 'MS SQL', 3),
(71, 4, 'How to add a new project in SonarQube?', 'Through Project Wizard', 'Using REST API', 'Both', 'Not possible', 3),
(72, 4, 'In SonarCloud, a project is public by default?', 'Yes', 'No', 'Depends on plan', 'Never', 1),
(73, 4, 'Which report gives coverage details?', 'Coverage report', 'Bug report', 'Duplication report', 'Debt report', 1),
(74, 4, 'Which keyword is used in sonar-project.properties to define key?', 'projectKey', 'sonar.projectKey', 'key', 'project.name', 2),
(75, 4, 'What is the purpose of "Leak Period" in SonarQube?', 'Analysis time range', 'Tracking newly introduced issues', 'Scanning for memory leaks', 'Setting alarms', 2),
(76, 4, 'How can rules be customized?', 'In Administration UI', 'By editing pom.xml', 'With gradlew', 'Using webhooks', 1),
(77, 4, 'Which quality profile is enabled by default?', 'Sonar way', 'Strict', 'Quality Sense', 'Your company rules', 1),
(78, 4, 'What is “Technical Debt” in SonarQube?', 'Coding to be rewritten', 'Documentation', 'Time needed to fix maintainability issues', 'CPU Usage', 3),
(79, 4, 'Which integration is used to block PRs with failing Quality Gates?', 'Jenkinsfile', 'CI/CD check', 'Pull request decoration', 'Webhooks', 3),
(80, 4, 'SonarQube UI can be accessed by default at what port?', '9000', '8080', '3000', '7070', 1);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(81, 5, 'What is Nexus used for?', 'Artifact Repository', 'Monitoring', 'Code Editor', 'Testing Tool', 1),
(82, 5, 'Which artifact type is NOT managed by Nexus?', 'Docker', 'Maven', 'Git', 'NPM', 3),
(83, 5, 'Default web UI port for Nexus 3?', '8081', '8080', '8888', '9000', 1),
(84, 5, 'How are users managed in Nexus?', 'User Management UI', 'Using OS users', 'API only', 'Password Files', 1),
(85, 5, 'Which authentication is commonly used in Nexus?', 'OAuth only', 'LDAP, Internal & Crowd', 'PGP', 'SSH', 2),
(86, 5, 'How do you upload an artifact in Nexus?', 'command line only', 'Through UI or REST API', 'Email attachment', 'FTP', 2),
(87, 5, 'Which configuration file manages Nexus startup?', 'nexus.properties', 'config.xml', 'nexus.ini', 'setup.cfg', 1),
(88, 5, 'Which policy type is NOT available for repositories in Nexus?', 'Release', 'Snapshot', 'Staging', 'Demo', 4),
(89, 5, 'What is a hosted repository?', 'Proxy for external', 'Stores your own artifacts', 'Mirror only', 'Documentation', 2),
(90, 5, 'What is a proxy repository?', 'Stores local builds', 'Proxies third-party repos', 'Docker runner', 'User manager', 2),
(91, 5, 'What is a group repository?', 'A logical aggregation of multiple repos', 'For team users', 'Repo manager team', 'Artifact bundle', 1),
(92, 5, 'To restrict deploy permission, use _____', 'Repository Roles', 'Usernames', 'Groups only', 'License keys', 1),
(93, 5, 'Where are Nexus logs found?', 'logs/ directory', '/var/tmp', '/nexushome/', '/etc/', 1),
(94, 5, 'Best way to backup Nexus data?', 'Copy binaries only', 'Export database', 'Backup sonatype-work directory', 'No need to backup', 3),
(95, 5, 'Which format can Nexus NOT serve?', 'RubyGems', 'NuGet', 'SVN', 'Bower', 3),
(96, 5, 'How to set SSL for Nexus?', 'config.xml', 'nginx reverse proxy or jetty config', 'Enable httpd', 'edit README', 2),
(97, 5, 'Can Nexus repositories be browsed via REST API?', 'Yes', 'No', 'Only with plugin', 'Never', 1),
(98, 5, 'How do you upgrade Nexus?', 'Use UI', 'Use admin REST API', 'Download new version and switch directory', 'Push update code', 3),
(99, 5, 'What is required to integrate Nexus with Maven?', 'Jenkinsfile', 'Repository URL in pom.xml/settings.xml', 'Install plugin', 'Change user account', 2),
(100, 5, 'Which one is a security best practice with Nexus?', 'Open all repos', 'Regularly update & control access', 'Allow anonymous uploads', 'Share root password', 2);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(101, 6, 'What is Tomcat primarily used for?', 'Servlet/JSP container', 'Database server', 'Load balancer', 'Email server', 1),
(102, 6, 'What is the default HTTP connector port for Tomcat?', '80', '8080', '3306', '7001', 2),
(103, 6, 'Which file is used to configure Tomcat server settings?', 'server.xml', 'web.xml', 'tomcat.xml', 'config.xml', 1),
(104, 6, 'Where should you place a WAR file to deploy an app in Tomcat?', '/bin', '/webapps', '/deploy', '/conf', 2),
(105, 6, 'How to start Tomcat on Linux?', './startup.sh', './start.sh', './run.sh', './tomcat.sh', 1),
(106, 6, 'Which protocol does Tomcat use by default?', 'HTTP', 'FTP', 'SMTP', 'SSH', 1),
(107, 6, 'Which directory contains Tomcat logs?', '/logs', '/webapps/logs', '/tomcat/logs', 'logs/', 4),
(108, 6, 'How do you stop Tomcat on Linux?', './shutdown.sh', './stop.sh', './quit.sh', './kill.sh', 1),
(109, 6, 'Which web descriptor file is required for a web application?', 'app.xml', 'web.xml', 'deploy.xml', 'config.xml', 2),
(110, 6, 'Tomcat is developed by which foundation?', 'Linux Foundation', 'Apache Software Foundation', 'Mozilla', 'Oracle', 2),
(111, 6, 'What is the default username for Tomcat manager?', 'root', 'tomcat', 'admin', 'manager', 2),
(112, 6, 'How do you enable SSL in Tomcat?', 'Edit web.xml', 'Add HTTPS connector in server.xml', 'Enable in config.xml', 'Use tomcat.conf', 2),
(113, 6, 'Tomcat supports which versions of Java Servlet?', '2.1+', 'All', 'Depends on Tomcat version', '4.0+', 3),
(114, 6, 'How can you restrict access to the Tomcat manager?', 'By editing tomcat-users.xml', 'Changing logs/', 'Rename webapps/', 'Deleting war files', 1),
(115, 6, 'Which file contains environment-specific variables?', 'setenv.sh', 'env.xml', 'tomenv.xml', 'startup.sh', 1),
(116, 6, 'How do you change memory settings for Tomcat?', 'Edit server.xml', 'Change JAVA_OPTS in setenv.sh', 'web.xml', 'restart server', 2),
(117, 6, 'How to enable access logging?', 'AccessLogValve in server.xml', 'Edit log4j.xml', 'web.xml', 'tomcat.conf', 1),
(118, 6, 'What does the “conf” directory contain?', 'Source code', 'Configuration files', 'Web apps', 'JDK', 2),
(119, 6, 'To perform clustering, Tomcat uses?', 'nginx', 'mod_cluster', 'DeltaManager/BackupManager', 'haproxy', 3),
(120, 6, 'If Tomcat does not start, which log should you check first?', 'localhost.log', 'catalina.out', 'access.log', 'error.log', 2);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(121, 7, 'What is Jenkins primarily used for?', 'Continuous Integration/Delivery', 'Monitoring', 'Testing', 'Version Control', 1),
(122, 7, 'Jenkins is written in which programming language?', 'Python', 'Java', 'Ruby', 'C#', 2),
(123, 7, 'What is a Jenkinsfile?', 'Configuration file for agent', 'Pipeline as code', 'Manifest for plugins', 'Database schema', 2),
(124, 7, 'How do you install plugins in Jenkins?', 'Edit config.xml', 'Via Manage Jenkins > Plugins', 'Makefile', 'Upload zip', 2),
(125, 7, 'Default Jenkins UI port is?', '8080', '9000', '80', '443', 1),
(126, 7, 'What is the purpose of a node in Jenkins?', 'Connection for agents', 'Stores builds', 'Database', 'Web server', 1),
(127, 7, 'How can Jenkins jobs be triggered?', 'Manual only', 'On SCM changes', 'From other jobs', 'All of the above', 4),
(128, 7, 'Which plugin allows parallel execution of steps?', 'Pipeline', 'Git', 'Mailer', 'Ant', 1),
(129, 7, 'Which scripting language is used for pipelines?', 'Shell', 'Groovy', 'Powershell', 'Python', 2),
(130, 7, 'Jenkins home directory environment variable?', 'JENKINS_HOUSE', 'JENKINS_PATH', 'JENKINS_HOME', 'JENKINS_VAR', 3),
(131, 7, 'How do you back up Jenkins jobs?', 'Export builds', 'Copy JENKINS_HOME/jobs', 'tar plugins/', 'Download reports', 2),
(132, 7, 'To integrate Jenkins with GitHub?', 'GitHub plugin', 'SVN plugin', 'Pipeline', 'Docker plugin', 1),
(133, 7, 'How can you secure Jenkins?', 'Use authentication & authorization', 'Run as root', 'Remove logs', 'Hide UI', 1),
(134, 7, 'What is a "build agent"?', 'Central controller', 'Machine executing builds', 'Plugin', 'Webhook', 2),
(135, 7, 'Which Jenkins plugin supports email notifications?', 'Git plugin', 'Mailer plugin', 'Monitor plugin', 'Pipeline plugin', 2),
(136, 7, 'A Freestyle project in Jenkins is?', 'Simple build job', 'Docker container', 'Kubernetes pod', 'Manual config file', 1),
(137, 7, 'What is Blue Ocean in Jenkins?', 'Plugin for UI/UX', 'Monitoring dashboard', 'Security plugin', 'Build tool', 1),
(138, 7, 'To archive build artifacts, use?', 'ArchiveArtifacts step', 'SaveReport step', 'PipelineLog', 'Agent step', 1),
(139, 7, 'How are parameters passed to builds?', 'Configure job parameters', 'Via shell scripts only', 'Settings.xml', 'Email', 1),
(140, 7, 'Which file resets Jenkins admin password?', 'config.xml', 'secrets/initialAdminPassword', 'reset.xml', 'admin.conf', 2);

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(141, 8, 'What is Docker primarily used for?', 'Virtualization', 'Containerization', 'Web Hosting', 'Code Testing', 2),
(142, 8, 'What is the default Docker network driver?', 'host', 'bridge', 'overlay', 'macvlan', 2),
(143, 8, 'Which command lists Docker containers?', 'docker images', 'docker ps', 'docker ls', 'docker run', 2),
(144, 8, 'What file is used to define instructions for Docker image building?', 'Makefile', 'Dockerfile', 'docker.xml', 'image.txt', 2),
(145, 8, 'Which command builds a Docker image?', 'docker build', 'docker compile', 'docker init', 'docker image', 1),
(146, 8, 'Which command starts a new container?', 'docker run', 'docker start', 'docker exec', 'docker begin', 1),
(147, 8, 'Command to stop a running container?', 'docker remove', 'docker kill', 'docker stop', 'docker halt', 3),
(148, 8, 'Which file defines persistent volumes in Docker Compose?', 'dockerfile.yml', 'docker-compose.yml', 'volumes.yaml', 'compose.txt', 2),
(149, 8, 'How can you remove unused images?', 'docker clean', 'docker prune', 'docker rmi', 'docker recycle', 2),
(150, 8, 'Which command shows detailed info about a container?', 'docker inspect', 'docker info', 'docker show', 'docker stat', 1),
(151, 8, 'Docker images are stored in?', 'containers/', 'dockerfiles/', 'layers', 'repositories', 4),
(152, 8, 'Which command removes a container?', 'docker rm', 'docker rmi', 'docker remove', 'docker del', 1),
(153, 8, 'Where is the default Docker daemon socket?', '/var/run/docker.sock', '/etc/docker.sock', '/docker/socket', '/usr/bin/docker.sock', 1),
(154, 8, 'How do you pass environment variables to a container?', '-e flag in docker run', '--vars', '--set', '-env', 1),
(155, 8, 'To log in to DockerHub?', 'docker connect', 'docker login', 'docker auth', 'docker hub-login', 2),
(156, 8, 'What command tags a Docker image?', 'docker label', 'docker tag', 'docker update tag', 'docker set', 2),
(157, 8, 'Which storage driver is default in most Docker installations?', 'aufs', 'overlay2', 'devicemapper', 'btrfs', 2),
(158, 8, 'Which orchestrator is often used with Docker?', 'Kubernetes', 'Ansible', 'Chef', 'Jenkins', 1),
(159, 8, 'To run a container in detached mode?', 'docker run -d', 'docker det', 'docker bg', 'docker --detach', 1),
(160, 8, 'How do you monitor resource usage of a container?', 'docker stats', 'docker monitor', 'docker usage', 'docker top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--
CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `mst_test`
--
INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(1, 1, 'Linux Fundamentals', '20'),
(2, 2, 'Shell-Scripting Basics', '20'),
(3, 3, 'Maven Essentials', '20'),
(4, 4, 'SonarQube Basics', '20'),
(5, 5, 'Nexus Usage', '20'),
(6, 6, 'Tomcat Administration', '20'),
(7, 7, 'Jenkins CI/CD', '20'),
(8, 8, 'Docker for DevOps', '20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--
CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--
CREATE TABLE IF NOT EXISTS `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

