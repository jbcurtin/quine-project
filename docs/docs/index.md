# Quine&#x3a; Complex AWS Configurations in minutes

## Quine
`quine` is built to allow engineers the ability to deploy complex AWS configurations in minutes without having to read through AWS Documentation. Expanding on Red Green Blue Deployment, `quine` uses Babylonian Zodiacal Constellations[0] to namespace deployments. Docker Containers can also be built and deploy through ssh or kubernetes onto EC2-Nodes

## Limitations

### ACM
ACM only allows 10 certs per accounts relative to the domain. Updating certs to update subject alt-names is important to move forward with this

https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html

ACM Logs Cert creation publically. This should be disabled in the future https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency

### Route53
In order to save time, I've opted to bypass the requirement to manage private-DNS. For private DNS, I would have to add an additional Hosted Zone with VPC to route requests. In the future, it needs to be fixed so that DNS requests only happen locally

