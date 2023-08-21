class profile::agent_nodes {
  include samuelson-dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}


}
