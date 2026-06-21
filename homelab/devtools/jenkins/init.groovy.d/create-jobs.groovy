import jenkins.model.Jenkins

def jobs = [
    "visual-code-analysis": "/var/jenkins_home/job-definitions/visual-code-analysis.xml"
]

jobs.each { jobName, configPath ->
    def jenkins = Jenkins.instance
    def existing = jenkins.getItem(jobName)

    if (existing == null) {
        println "Creating job '${jobName}' from ${configPath}"
        def configFile = new File(configPath)
        jenkins.createProjectFromXML(jobName, configFile.newInputStream())
        jenkins.save()
    } else {
        println "Job '${jobName}' already exists. Skipping."
    }
}
