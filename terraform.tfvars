jenkins_ingress = [
    {
      description = "urolime bastion SSL Check",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["3.6.195.198/32"]
    },
    {
      description = "Alphons",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["120.89.74.204/32"]
    },
    {
      description = "Aji",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["15.207.232.36/32"]
    },
    {
      description = "ArunB",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["122.161.29.191/32"]
    },
    {
      description = "lalkrishna",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["122.184.93.234/32"]
    },
    {
      description = "Javid Jenkins",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["13.234.254.76/32"]
    },
    {
      description = "Hari",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["106.205.160.148/32"]
    },
    {
      description = "Abraham",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["103.141.54.90/32"]
    },
    {
      description = "Ajesh",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["103.165.167.227/32"]
    },
    {
      description = "hari",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["152.58.203.153/32"]
    },
    {
      description = "Lalkrishna",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["103.151.188.6/32"]
    },
    {
      description = "Nandakishore",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["103.176.184.13/32"]
    },
    {
      description = "Abraham",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["103.104.44.50/32"]
    },
    {
      description = "Suhail",
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_blocks = ["152.58.219.139/32"]
    }
  ]
jenkins_egress = [
    {
      description    = "Outbound HTTP to UB3-SUPPORT",
      from_port      = 80,
      to_port        = 80,
      protocol       = "tcp",
      cidr_blocks = null,
      security_groups = ["sg-096d45bb39d0e778f"],
      ipv6_cidr_blocks = null
    },
    {
      description    = "Outbound HTTPS to UB3-SUPPORT",
      from_port      = 443,
      to_port        = 443,
      protocol       = "tcp",
      security_groups = ["sg-096d45bb39d0e778f"],
      cidr_blocks = null,
      ipv6_cidr_blocks = null
    },
    {
      description    = "Outbound Custom TCP to UB3-SUPPORT",
      from_port      = 8080,
      to_port        = 8080,
      protocol       = "tcp",
      security_groups = ["sg-096d45bb39d0e778f"],
      cidr_blocks = null,
      ipv6_cidr_blocks = null
    }
  ]
ub3-support_ingress = [
  {
    description = "Core APIs from Aji",
    from_port   = 8090,
    to_port     = 8095,
    protocol    = "tcp",
    cidr_blocks = ["15.207.47.27/32"],
    security_groups = []
  },
  {
    description = "Javid Home Mongo",
    from_port   = 27017,
    to_port     = 27017,
    protocol    = "tcp",
    cidr_blocks = ["103.141.55.170/32"],
    security_groups = []
  },
  {
    description = "Aji-Home RabbitMQ",
    from_port   = 15672,
    to_port     = 15672,
    protocol    = "tcp",
    cidr_blocks = ["13.235.22.80/32"],
    security_groups = []
  },
  {
    description = "LB-Route53-Alert",
    from_port   = 8091,
    to_port     = 8091,
    protocol    = "tcp",
    cidr_blocks = null,
    security_groups = ["sg-096d45bb39d0e778f"]
  },
  {
    description = "Jump",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["18.138.251.184/32"],
    security_groups = []
  },
  {
    description = "Test-img-jassi",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["3.0.146.168/32"],
    security_groups = []
  },
  {
    description = "Aji - Realtime indexing",
    from_port   = 8093,
    to_port     = 8093,
    protocol    = "tcp",
    cidr_blocks = ["13.235.22.80/32"],
    security_groups = []
  },
  {
    description = "Jump",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = null,
    security_groups = ["sg-096d45bb39d0e778f"]
  },
  {
    description = "Aji Home Mongo DB",
    from_port   = 27017,
    to_port     = 27017,
    protocol    = "tcp",
    cidr_blocks = ["13.235.22.80/32"],
    security_groups = []
  },
  {
    description = "Aji Home",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["5.195.234.162/32"],
    security_groups = []
  },
  {
    description = "Javid Home RabbitMQ MG...",
    from_port   = 15672,
    to_port     = 15672,
    protocol    = "tcp",
    cidr_blocks = ["13.201.234.188/32"],
    security_groups = []
  },
  {
    description = "Javid Home",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["13.202.9.112/32"],
    security_groups = []
  },
  {
    description = "Javid Windows Jump",
    from_port   = 3389,
    to_port     = 3389,
    protocol    = "tcp",
    cidr_blocks = ["13.201.234.188/32"],
    security_groups = []
  },
  {
    description = "Pugal windows",
    from_port   = 3389,
    to_port     = 3389,
    protocol    = "tcp",
    cidr_blocks = ["65.0.226.115/32"],
    security_groups = []
  }
]
 

ub3-support_egress = [
  # {
  #   description    = "Outbound HTTP to UB3-SUPPORT",
  #   from_port      = 80,
  #   to_port        = 80,
  #   protocol       = "tcp",
  #   cidr_blocks = ["::/0"],
  #   security_groups = ["sg-096d45bb39d0e778f"]
  # },
  # {
  #   description = "All IPv6 traffic",
  #   from_port   = 0,
  #   to_port     = 0,
  #   protocol    = "-1",
  #   # cidr_blocks = ["::/0"],
  #   security_groups = null
  # },
  {
    description = "All IPv4 traffic",
    from_port   = 0,
    to_port     = 0,
    protocol    = "-1",
    cidr_blocks = ["0.0.0.0/0"],
    ipv6_cidr_blocks = ["::/0"],
    security_groups = null
  }
] 