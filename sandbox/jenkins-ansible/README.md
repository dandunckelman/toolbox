# Usage
- Ensure this is being run from a host that has Ansible installed
- Run **vagrant up**
- Once complete, go to http://192.168.100.100:8080

# Notes:
* I liked this quote from the Ansible docs:
  * "If Ansible modules are the tools in your workshop, playbooks are your design plans."

# Opportunities for improvement
* No tests!
* Idempotency (that's a word, right?)
* Don't give full access to jenkins user for better security (if possible)
* Use more Ansible stuff (vars, roles, etc.)
* Job creation fails sometimes due to race condition where the Jenkins service isn't fully up/running
