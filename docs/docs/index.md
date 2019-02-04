# Quine&#x3a; Complex AWS Configurations in minutes

## Quine
## Getting Started with quine
`quine` orchestrates in one shell command to create complex and secure deployments. Taking basic components of Amazon Web Services, turning them
into actionable notes of information with `quine-map-scripts`, a `quine-orc-script` can be utilized to decide what to do next in an AWS Account.
Using `quine`, you'll be able to identify and designate any number of number of cluster configurations that'll allow testing software in isolated environments

Security is a central theme to the way `quine` is built. Following the [12 Factor App](https://12factor.net/`) methodology, Environment Variables are defined and embedded from
the orchestration hardware. Orchestration hardware may be your development laptop or a server somewhere in the cloud that has been upgraded to stow an incredible abount of [entropy](https://blog.cloudflare.com/randomness-101-lavarand-in-production/)

### Deployment Definitions
`quine` is built to allow engineers the ability to deploy complex AWS configurations in minutes without having to read through AWS Documentation. Expanding on Blue + Green Deployment, `quine` may use any number of designations to identify AWS clusters

#### Blue, Green
The primary benefit of Blue + Green deployment is reduction in downtime while maximizing availably and full featured deployment for testing. In theory, automated testing should never
be ran on production systems. In practice, we have to do it because its a validative check for decision makers to remain confident in software we ship. Quine helps accelerate your deployments
with pre-configured deployment topologies

* [AWS Elastic Cache Cluster]('/deployment-target-redis-cluster/')
* [AWS RDS Aurora Deployment using PostgreSQL](/deployment-target-postgresql-cluster/)
* [AWS RDS Aurora Deployment using MySQL](/deployment-target-mysql-cluster/)
* [kubernetes Deployment](/deployment-target-k8/)
* [Rancher Deployment](/deployment-target-rancher/)

#### Pleiades, Orion

Using [Babylonian Zodiacal Constellations](https://en.wikipedia.org/wiki/Babylonian_star_catalogues) as primary designations to identify AWS clusters

The primary benefit of Pleiades + Orion deployment is reduction in downtime while maximizing availably and full featured deployment for testing. In theory, automated testing should never
be ran on production systems. In practice, we have to do it because its a validative check for decision makers to remain confident in software we ship. Quine helps accelerate your deployments
with pre-configured deployment topologies

* [AWS Elastic Cache Cluster]('/deployment-target-redis-cluster/')
* [AWS RDS Aurora Deployment using PostgreSQL](/deployment-target-postgresql-cluster/)
* [AWS RDS Aurora Deployment using MySQL](/deployment-target-mysql-cluster/)
* [kubernetes Deployment](/deployment-target-k8/)
* [Rancher Deployment](/deployment-target-rancher/)


#### 東方青龍, 北方玄武
Using [Chinese constellations](https://en.wikipedia.org/wiki/Chinese_constellations) as primary designations to identify AWS clusters

The primary benefit of 東方青龍 + 北方玄武 deployment is reduction in downtime while maximizing availably and full featured deployment for testing. In theory, automated testing should never
be ran on production systems. In practice, we have to do it because its a validative check for decision makers to remain confident in software we ship. Quine helps accelerate your deployments
with pre-configured deployment topologies

* [AWS Elastic Cache Cluster]('/deployment-target-redis-cluster/')
* [AWS RDS Aurora Deployment using PostgreSQL](/deployment-target-postgresql-cluster/)
* [AWS RDS Aurora Deployment using MySQL](/deployment-target-mysql-cluster/)
* [kubernetes Deployment](/deployment-target-k8/)
* [Rancher Deployment](/deployment-target-rancher/)

#### 안드로메다자리, 황소자리
Using [Cheonsang Yeolchabunyajido](https://en.wikipedia.org/wiki/Cheonsang_Yeolchabunyajido) as primary designations to identify AWS clusters

The primary benefit of 안드로메다자리 + 황소자리 deployment is reduction in downtime while maximizing availably and full featured deployment for testing. In theory, automated testing should never
be ran on production systems. In practice, we have to do it because its a validative check for decision makers to remain confident in software we ship. Quine helps accelerate your deployments
with pre-configured deployment topologies

* [AWS Elastic Cache Cluster]('/deployment-target-redis-cluster/')
* [AWS RDS Aurora Deployment using PostgreSQL](/deployment-target-postgresql-cluster/)
* [AWS RDS Aurora Deployment using MySQL](/deployment-target-mysql-cluster/)
* [kubernetes Deployment](/deployment-target-k8/)
* [Rancher Deployment](/deployment-target-rancher/)

#### Gödel, Escher, Bach
[excerpt](https://en.wikipedia.org/wiki/G%C3%B6del,_Escher,_Bach): Gödel, Escher, Bach: An Eternal Golden Braid, also known as GEB, is a 1979 book by Douglas Hofstadter. By exploring common themes in the lives and works of logician Kurt Gödel, artist M. C. Escher, and composer Johann Sebastian Bach, the book expounds concepts fundamental to mathematics, symmetry, and intelligence. Through illustration and analysis, the book discusses how, through self-reference and formal rules, systems can acquire meaning despite being made of "meaningless" elements. It also discusses what it means to communicate, how knowledge can be represented and stored, the methods and limitations of symbolic representation, and even the fundamental notion of "meaning" itself.

The primary benefit of Tortoise + Achilles deployment is reduction in downtime while maximizing availably and full featured deployment for testing. In theory, automated testing should never
be ran on production systems. In practice, we have to do it because its a validative check for decision makers to remain confident in software we ship. Quine helps accelerate your deployments
with pre-configured deployment topologies

* [AWS Elastic Cache Cluster]('/deployment-target-redis-cluster/')
* [AWS RDS Aurora Deployment using PostgreSQL](/deployment-target-postgresql-cluster/)
* [AWS RDS Aurora Deployment using MySQL](/deployment-target-mysql-cluster/)
* [kubernetes Deployment](/deployment-target-k8/)
* [Rancher Deployment](/deployment-target-rancher/)

#### What is a Quine?
[excerpt](https://en.wikipedia.org/wiki/Quine_\(computing\)): A quine is a computer program which takes no input and produces a copy of its own source code as its only output. The standard terms for these programs in the computability theory and computer science literature are "self-replicating programs", "self-reproducing programs", and "self-copying programs".

Input is Amazon Web Services and output are AWS Clusters

Pleas read the code of quine to become more familar with the unspoken abstraction. The spacing between codes is just as important as the codes used

### Security Roadmap

* Implement [Vault by HashiCorp](https://www.vaultproject.io/)
* Implement compliant [kubernetes interface](https://kubernetes.io/)

### Deployment Configuration Roadmap

* document turtle deployment
* document forward deployment
* document kubernetes deployment
* document Rancher deployment
* document PostgreSQL deployment
* document MySQL deployment

* document redis deployment

## Limitations

### ACM
ACM only allows 10 certs per accounts relative to the domain. Updating certs to update subject alt-names is important to move forward with this

https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html

ACM Logs Cert creation publically. This should be disabled in the future https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency

### Route53
In order to save time, I've opted to bypass the requirement to manage private-DNS. For private DNS, I would have to add an additional Hosted Zone with VPC to route requests. In the future, it needs to be fixed so that DNS requests only happen locally

