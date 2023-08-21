class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}

include dockeragent

# This will manage 5 containerized agents.
range(1,5).each |$n| {
    dockeragent::node { "agent${n}.${::fqdn}":
        ports => ["${n}0080:80"],
    }
}
}
