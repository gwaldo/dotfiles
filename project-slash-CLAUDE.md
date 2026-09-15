Always use ASD-STE100 Simplified Technical English in this repo.

Use two spaces after a period in text.

This repo is an implementation that produces the workloads that run within EKS clusters for an <custom> render farm.  The repo that provides that infrastructure lives here: git.com/org/repo

These clusters may already be running, but are designed to be ephemeral.

The file `<project>-pod.yaml.testonly` is only intended to be used for the initial testing of a new pod.  After it is working as intended, it should be converted to a deployment, such as `<project>-deployment.yaml`.

`<project>-deployment.yaml` is the implementation of your pod, describing how it will be run at scale.

`<project>-config.yaml` is a configMap.

`<project>-sa.yaml` is a serviceAccount definition.

`v-kedascaler.yaml` configures KEDA, which handles the scaling of pods based on the number of jobs in the referenced SQS Queue.
