# aws_ecs-cookbook Cookbook [![Build Status](https://travis-ci.org/evertrue/aws_ecs-cookbook.svg?branch=master)](https://travis-ci.org/evertrue/aws_ecs-cookbook)

Adds all requirements for AWS EC2 Container Service

## Requirements

### Platforms

- Ubuntu

## Usage

### aws_ecs-cookbook::default

Just include `aws_ecs-cookbook` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[aws_ecs-cookbook]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: evertrue

