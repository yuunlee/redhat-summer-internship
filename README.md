# redhat-summer-internship
Documentation for 2022 Summer Internship with Red Hat

## Project Goal
The summer project is a side project for [Sandiego](https://github.com/sandiego-rh/sandiego) and [Explorer](https://github.com/sandiego-rh/explorer). Project Sandiego is a front-end development the gleans information from open source ecosystem data sets that help drive community and business-oriented decision making.

The goal for my summer project - density metrics, is to apply statistical methods on developing algorithms to quantify GitHub log data, user data on activity, community, and performance.

The metrics are based on acticities in PR, issue, committer, etc for repos within an organization. The goal for the project is to assist open-source community managers monitor and diagnose the community health, and make actionable decisions.

## Resources
Useful metrics link:
[CHAOSS](https://chaoss.community/)

[ORBIT MODEL](https://orbitmodel.com/)

## Data Source
[AUGUR](https://github.com/chaoss/augur)

## Code
[GITHUB REPO]()

## Metrics
### Activity (-> weight)
The activity metrics

Took monthly average activities and compared it with last month, to determine the increase or decrease in the attribute. The percentage of the repo activity within an org determines which repo within an org has been contributing a positive (or negative) activity. By clicking on the repo, a breakdown graph will be generated and display the breakdown of each activity, so that community managers can have a sense on whether it is the decrease in committer that is slowing down the growth of open source projects, or it is the increase in pull requests that is driving the projects, etc.

- #star increment -> weight: 0.01
- #watch increment -> weight: 0.1
- #fork increment -> weight: 0.2
- #Issue increment -> weight: 0.5
- #pull request increment -> weight: 1
- #pull request open increment -> weight: 1.2
- #pull request closed increment -> weight: 1.5
- #pull request commit increment -> weight: 1.7
- #committer increment -> weight: 1.6
- #commit increment -> weight: 1.3


### Communities
The community metric is the number of unique committers by month. With the metrics, a community manager would know which repo in an organization is growing/ declining in committer volume.
By clicking on the repo, a breakdown table would display the name of the committer and its affiliation followed by its location. With the number of commits by month from each committer, the community manager would be able to know who the community is losing, or how many new contributors are coming in to the community, thus making impactful decisions on building a stronger community.

- Contributor
    - #committers
        - #of unique contributors
    - Organizational diversity (company sponsored project)


### Performances (-> weight)
The performance metrics

Calculate the performance based on how much time an issue/pr is closed (exponential decay), and how much time an issue/pr requires from open to close. The more recent an issue/pr is closed, the stronger contribution to the performance, and the lesser time an issue/pr requires from open to close, indicates a better performance, thus a higher weight. By clicking on each repo, it generates a monthly breakdown bar chart in the bottom, which gives the community manager a better sense on how the performance goes by time, whether it is turning from a fastly response repo into a stale repo, or growing in speed.


- Issue from open to close duration
    - 5 groups (fast, mild, slow, stale, expired)
        - <= 30 days -> weight: 1
        - <= 60 days -> weight: 0.66
        - <= 90 days -> weight: 0.33
        - > 90 days -> weight: 0.1
        - > 365 days -> weight: 0
Issue close within an hour will be considered as bot response -> exclude

- PR from open to close duration
    - 5 groups (fast, mild, slow, stale, expired)
        - <= 15 days -> weight: 1
        - <= 30 days -> weight: 0.66
        - <= 45 days -> weight: 0.33
        - > 60 days -> weight: 0.1
        - > 365 days -> weight: 0
PR close within an hour will be considered as bot response -> exclude

- PR/ issue close exponential decay
The more recent an issue or a PR is being closed, the stronger indication it is to the performance. Thus a higher weight it has to the metric.
    - Close within 1 mo -> weight: 1
    - Close within 2 mo -> weight: 0.9
    - Close within 3 mo -> weight: 0.9*0.9
    - etc…
    - Data longer than 365 days ago is no longer considered


### Statistics
Elbow method for clustering

Normalization on time series data

### Visualization
[Dash](https://dash.plotly.com/) is an open source python framework create by plotly for creating interactive and customized web applications.

### What can be done more with the data...

### How to Run Locally
