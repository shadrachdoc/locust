from locust import HttpUser, TaskSet, task, between

class UserBehavior(TaskSet):
    
    @task(1)
    def index(self):
        self.client.get("https://80-port-947eb2fef2d14547.labs.kodekloud.com/")
    

class WebsiteUser(HttpUser):
    tasks = [UserBehavior]
    wait_time = between(1, 5)  # Users will wait between 1 and 5 seconds after each task

