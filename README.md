# redhat-summer-internship
Documentation for 2022 summer internship with Red Hat

## Project Goal

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
Took monthly average activities and compared it with last month, to determine the increase or decrease. The percentage of the repo activity within an org determines which repo within an org has been contributing a positive (or negative) activity. By clicking on the repo, a breakdown graph will be generated and display the breakdown of each activity, so that community managers can have a sense on whether it is the decrease in committer that is slowing down the growth of open source projects, or it is the increase in pull requests that is driving the projects, etc.

### Communities

### Performances (-> weight)
Calculate the performance based on how much time an issue/pr is closed (exponential decay), and how much time an issue/pr requires from open to close. The more recent an issue/pr is closed, the stronger contribution to the performance, and the lesser time an issue/pr requires from open to close, indicates a better performance, thus a higher weight. By clicking on each repo, it generates a monthly breakdown bar chart in the bottom, which gives the community manager a better sense on how the performance goes by time, whether it is turning from a fastly response repo into a stale repo, or growing in speed.

### Statistics
Elbow method for clustering
Normalization on time series data

### Visualization
[Dash](https://dash.plotly.com/) is an open source python framework create by plotly for creating interactive and customized web applications.