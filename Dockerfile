FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCiAgLSBtb2JpbGUtY2xpZW50LWVuYWJsZWQKbWV0YWRhdGE6CiAg\
ZGlzcGxheU5hbWU6IFB1c2ggTm90aWZpY2F0aW9ucwogIGxvbmdEZXNjcmlwdGlvbjogIkFuIEFQ\
QiBkZXBsb3lpbmcgdGhlIEFlcm9HZWFyIFVuaWZpZWRQdXNoIFNlcnZlciB3aXRoIHBlcnNpc3Rl\
bnQgc3RvcmFnZSBhbmQgYXV0aGVudGljYXRpb24gdGhyb3VnaCBPcGVuc2hpZnQiCiAgaW1hZ2VV\
cmw6ICJodHRwczovL3Bicy50d2ltZy5jb20vcHJvZmlsZV9pbWFnZXMvMTc5NDQ0MDAwNS9hZXJv\
Z2Vhcl9pY29uLTFfNDAweDQwMC5wbmciCiAgZG9jdW1lbnRhdGlvblVybDogImh0dHBzOi8vZG9j\
cy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3VuaWZpZWRwdXNoLmh0bWwiCiAgcHJvdmlkZXJE\
aXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgZGVwZW5kZW5jaWVzOgogICAgLSAiZG9ja2Vy\
LmlvL2Flcm9nZWFyL3VuaWZpZWRwdXNoLXdpbGRmbHktcGxhaW46Mi4xLjAiCiAgICAtICJkb2Nr\
ZXIuaW8vY2VudG9zL3Bvc3RncmVzcWwtOTYtY2VudG9zNzo5LjYiCiAgICAtICJkb2NrZXIuaW8v\
YWVyb2dlYXIvdXBzLWNvbmZpZy1vcGVyYXRvcjptYXN0ZXIiCiAgICAtICJkb2NrZXIuaW8vb3Bl\
bnNoaWZ0L29hdXRoLXByb3h5OnYxLjEuMCIKICBzZGstZG9jcy1hbmRyb2lkOiAiaHR0cHM6Ly9k\
b2NzLmFlcm9nZWFyLm9yZy9leHRlcm5hbC9hcGIvcHVzaC9hbmRyb2lkLmh0bWwiCiAgc2RrLWRv\
Y3MtY29yZG92YTogImh0dHBzOi8vZG9jcy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3B1c2gv\
Y29yZG92YS5odG1sIgogIHNkay1kb2NzLWlvczogImh0dHBzOi8vZG9jcy5hZXJvZ2Vhci5vcmcv\
ZXh0ZXJuYWwvYXBiL3B1c2gvaW9zLmh0bWwiCiAgc2RrLWRvY3MteGFtYXJpbjogImh0dHBzOi8v\
ZG9jcy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3B1c2gveGFtYXJpbi5odG1sIgogIHNlcnZp\
Y2VOYW1lOiB1cHMKICBiaW5kaW5nc0xpbWl0OiAyCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAog\
ICAgZGVzY3JpcHRpb246IFBlcnNpc3RlbnQgZGVwbG95bWVudCBvZiBVUFMKICAgIGZyZWU6IFRy\
dWUKICAgIG1ldGFkYXRhOgogICAgICBtb2JpbGVjbGllbnRfYmluZF9wYXJhbWV0ZXJzX2RhdGE6\
CiAgICAgICAgLSAneyJuYW1lIjogIkNMSUVOVF9JRCIsICJ2YWx1ZSI6ICJtZXRhZGF0YS5uYW1l\
IiwgInR5cGUiOiAicGF0aCIsICJmaWx0ZXJEaXNwbGF5R3JvdXBCeSI6IkNMSUVOVF9UWVBFIn0n\
CiAgICBwYXJhbWV0ZXJzOiBbXQogICAgYmluZF9wYXJhbWV0ZXJzOgogICAgLSBuYW1lOiBDTElF\
TlRfSUQKICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgdGl0bGU6IE1vYmlsZSBDbGllbnQgSUQK\
ICAgICAgdHlwZTogc3RyaW5nCiAgICAtIG5hbWU6IENMSUVOVF9UWVBFCiAgICAgIHJlcXVpcmVk\
OiBUcnVlCiAgICAgIHRpdGxlOiBNb2JpbGUgQ2xpZW50IFR5cGUKICAgICAgdHlwZTogZW51bQog\
ICAgICBkZWZhdWx0OiAiQW5kcm9pZCIKICAgICAgZW51bTogWyJBbmRyb2lkIiwgIklPUyJdCiAg\
ICAtIG5hbWU6IGdvb2dsZWtleQogICAgICB0aXRsZTogWW91ciBTZXJ2ZXIgS2V5IGZvciBGaXJl\
YmFzZSBDbG91ZCBNZXNzYWdpbmcKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRpc3BsYXlfZ3Jv\
dXA6IEFuZHJvaWQKICAgIC0gbmFtZTogcHJvamVjdE51bWJlcgogICAgICB0aXRsZTogWW91ciBT\
ZW5kZXIgSUQsIG5lZWRlZCB0byBjb25uZWN0aW5nIHRvIEZDTQogICAgICB0eXBlOiBzdHJpbmcK\
ICAgICAgZGlzcGxheV9ncm91cDogQW5kcm9pZAogICAgLSBuYW1lOiBjZXJ0CiAgICAgIHRpdGxl\
OiBpT1MgLnAxMiBmaWxlIChlbmNvZGUgY29udGVudHMgaW4gYmFzZTY0IGJlZm9yZSBwYXN0aW5n\
KQogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGlzcGxheV90eXBlOiB0ZXh0YXJlYQogICAgICBk\
aXNwbGF5X2dyb3VwOiBpT1MKICAgIC0gbmFtZTogcGFzc3BocmFzZQogICAgICB0aXRsZTogVGhl\
IHBhc3NwaHJhc2UKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRpc3BsYXlfdHlwZTogcGFzc3dv\
cmQKICAgICAgZGlzcGxheV9ncm91cDogaU9TCiAgICAtIG5hbWU6IGlvc0lzUHJvZHVjdGlvbgog\
ICAgICB0aXRsZTogSXMgdGhpcyBhIHByb2R1Y3Rpb24gY2VydGlmaWNhdGU/CiAgICAgIGRlZmF1\
bHQ6IGZhbHNlCiAgICAgIHR5cGU6IGJvb2xlYW4KICAgICAgZGlzcGxheV90eXBlOiBjaGVja2Jv\
eAogICAgICBkaXNwbGF5X2dyb3VwOiBpT1MK"


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN yum install epel-release -y && yum install jq -y
RUN chmod -R g=u /opt/{ansible,apb}
USER apb