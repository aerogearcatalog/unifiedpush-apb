FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCiAgLSBtb2JpbGUtY2xpZW50LWVuYWJsZWQKbWV0YWRhdGE6CiAg\
ZGlzcGxheU5hbWU6IFVuaWZpZWQgUHVzaCBTZXJ2ZXIKICBsb25nRGVzY3JpcHRpb246ICJBbiBB\
UEIgZGVwbG95aW5nIHRoZSBBZXJvR2VhciBVbmlmaWVkUHVzaCBTZXJ2ZXIgd2l0aCBwZXJzaXN0\
ZW50IHN0b3JhZ2UgYW5kIGF1dGhlbnRpY2F0aW9uIHRocm91Z2ggT3BlbnNoaWZ0IgogIGltYWdl\
VXJsOiAiaHR0cHM6Ly9wYnMudHdpbWcuY29tL3Byb2ZpbGVfaW1hZ2VzLzE3OTQ0NDAwMDUvYWVy\
b2dlYXJfaWNvbi0xXzQwMHg0MDAucG5nIgogIGRvY3VtZW50YXRpb25Vcmw6ICJodHRwczovL2dp\
dGh1Yi5jb20vYWVyb2dlYXJjYXRhbG9nL3VuaWZpZWRwdXNoLWFwYi9ibG9iL21hc3Rlci9kb2Nz\
L21vZHVsZXMvdXBzX29wZW5zaGlmdC9pbmRleC5hc2NpaWRvYyIKICBwcm92aWRlckRpc3BsYXlO\
YW1lOiAiUmVkIEhhdCwgSW5jLiIKICBkZXBlbmRlbmNpZXM6CiAgICAtICJkb2NrZXIuaW8vYWVy\
b2dlYXIvdW5pZmllZHB1c2gtd2lsZGZseS1wbGFpbjoyLjEuMCIKICAgIC0gImRvY2tlci5pby9j\
ZW50b3MvcG9zdGdyZXNxbC05Ni1jZW50b3M3OjkuNiIKICAgIC0gImRvY2tlci5pby9hZXJvZ2Vh\
ci91cHMtY29uZmlnLW9wZXJhdG9yOm1hc3RlciIKICAgIC0gImRvY2tlci5pby9vcGVuc2hpZnQv\
b2F1dGgtcHJveHk6djEuMS4wIgogIHNkay1kb2NzLWFuZHJvaWQ6ICJodHRwczovL2RvY3MuYWVy\
b2dlYXIub3JnL2FuZHJvaWQtc2RrL2xhdGVzdC9nZXR0aW5nLXN0YXJ0ZWQvcHVzaC5odG1sIgog\
IHNkay1kb2NzLWNvcmRvdmE6ICJodHRwczovL2dpdGh1Yi5jb20vYWVyb2dlYXJjYXRhbG9nL3Vu\
aWZpZWRwdXNoLWFwYi9ibG9iL21hc3Rlci9kb2NzL21vZHVsZXMvYWVyb2dlYXItcHVzaC1jb3Jk\
b3ZhL3Ryb3VibGVzaG9vdGluZy5hc2NpaWRvYyIKICBzZGstZG9jcy1pb3M6ICJodHRwczovL2dp\
dGh1Yi5jb20vYWVyb2dlYXJjYXRhbG9nL3VuaWZpZWRwdXNoLWFwYi9ibG9iL21hc3Rlci9kb2Nz\
L21vZHVsZXMvYWVyb2dlYXItcHVzaC1pb3MvaW5kZXgubWFya2Rvd24iCiAgc2RrLWRvY3MteGFt\
YXJpbjogImh0dHBzOi8vZ2l0aHViLmNvbS9hZXJvZ2VhcmNhdGFsb2cvdW5pZmllZHB1c2gtYXBi\
L2Jsb2IvbWFzdGVyL2RvY3MvbW9kdWxlcy9hZXJvZ2Vhci1wdXNoLXdpbmRvd3MvaW5kZXgubWFy\
a2Rvd24iCiAgc2VydmljZU5hbWU6IHVwcwpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIGRl\
c2NyaXB0aW9uOiBQZXJzaXN0ZW50IGRlcGxveW1lbnQgb2YgVVBTCiAgICBmcmVlOiBUcnVlCiAg\
ICBtZXRhZGF0YToKICAgICAgbW9iaWxlY2xpZW50X2JpbmRfcGFyYW1ldGVyc19kYXRhOgogICAg\
ICAgIC0gJ3sibmFtZSI6ICJDTElFTlRfSUQiLCAidmFsdWUiOiAibWV0YWRhdGEubmFtZSIsICJ0\
eXBlIjogInBhdGgifScKICAgIHBhcmFtZXRlcnM6IFtdCiAgICBiaW5kX3BhcmFtZXRlcnM6CiAg\
ICAtIG5hbWU6IENMSUVOVF9JRAogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICB0aXRsZTogTW9i\
aWxlIENsaWVudCBJRAogICAgICB0eXBlOiBzdHJpbmcKICAgIC0gbmFtZTogQ0xJRU5UX1RZUEUK\
ICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgdGl0bGU6IE1vYmlsZSBDbGllbnQgVHlwZQogICAg\
ICB0eXBlOiBlbnVtCiAgICAgIGRlZmF1bHQ6ICJBbmRyb2lkIgogICAgICBlbnVtOiBbIkFuZHJv\
aWQiLCAiSU9TIl0KICAgIC0gbmFtZTogZ29vZ2xla2V5CiAgICAgIHRpdGxlOiBZb3VyIEdvb2ds\
ZSBLZXkgZm9yIEZpcmViYXNlIENsb3VkIE1lc3NhZ2luZwogICAgICB0eXBlOiBzdHJpbmcKICAg\
ICAgZGlzcGxheV9ncm91cDogQW5kcm9pZAogICAgLSBuYW1lOiBwcm9qZWN0TnVtYmVyCiAgICAg\
IHRpdGxlOiBZb3VyIEZDTSBQcm9qZWN0IE51bWJlciwgbmVlZGVkIG9uIHRoZSBtb2JpbGUgY2xp\
ZW50IGZvciBjb25uZWN0aW5nIHdpdGggRkNNCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBkaXNw\
bGF5X2dyb3VwOiBBbmRyb2lkCiAgICAtIG5hbWU6IGNlcnQKICAgICAgdGl0bGU6IGlPUyAucDEy\
IGZpbGUgKGVuY29kZSBjb250ZW50cyBpbiBiYXNlNjQgYmVmb3JlIHBhc3RpbmcpCiAgICAgIHR5\
cGU6IHN0cmluZwogICAgICBkaXNwbGF5X3R5cGU6IHRleHRhcmVhCiAgICAgIGRpc3BsYXlfZ3Jv\
dXA6IGlPUwogICAgLSBuYW1lOiBwYXNzcGhyYXNlCiAgICAgIHRpdGxlOiBUaGUgcGFzc3BocmFz\
ZQogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAgICBk\
aXNwbGF5X2dyb3VwOiBpT1MKICAgIC0gbmFtZTogaW9zSXNQcm9kdWN0aW9uCiAgICAgIHRpdGxl\
OiBJcyB0aGlzIGEgcHJvZHVjdGlvbiBjZXJ0aWZpY2F0ZT8KICAgICAgZGVmYXVsdDogZmFsc2UK\
ICAgICAgdHlwZTogYm9vbGVhbgogICAgICBkaXNwbGF5X3R5cGU6IGNoZWNrYm94CiAgICAgIGRp\
c3BsYXlfZ3JvdXA6IGlPUwo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN chmod -R g=u /opt/{ansible,apb}
USER apb