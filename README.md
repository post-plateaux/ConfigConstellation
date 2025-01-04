# Natural Language Infrastructure as Code (NLIaC)

A revolutionary approach to system configuration that combines the power of Infrastructure as Code (IaC) with natural language processing through AI assistance. This repository represents a new paradigm in managing system configurations - one where you can literally have a conversation to deploy changes to your system.

## What Makes This Special?

Traditional dotfiles repositories are static collections of configuration files. This project transforms that concept into a dynamic, AI-powered system configuration platform. By leveraging [aider](https://github.com/paul-gauthier/aider), an AI-powered coding assistant, we can make system changes through natural language conversation while maintaining all the benefits of traditional Infrastructure as Code.

## Core Concepts

### Infrastructure as Code (IaC) Principles
- **Declarative Configuration**: All system settings are defined in code, not manual configurations
- **Version Control**: Every change is tracked in git with meaningful commit messages
- **Reproducibility**: Entire system configuration can be replicated across machines
- **Automation**: Symlinks and scripts handle deployment automatically
- **Documentation**: Code and commit history serve as living documentation

### Natural Language Interface
Instead of manually editing config files or writing automation scripts, you can:
- Describe changes you want in plain English
- Let AI understand and implement the changes
- Review and approve the changes before they're applied
- Have a documented conversation about your system's evolution

### AI-Assisted Configuration
The aider CLI tool enables:
- Real-time configuration changes through natural language
- Intelligent understanding of your system's context
- Immediate feedback and iteration
- Git integration for version control
- Preservation of conversation history

## Repository Structure

- `dotfiles/`: Configuration files for various system components
- `chime_script/`: System notification scripts
- Various configuration files for:
  - Window Management (Hyprland)
  - Status Bar (Waybar)
  - Terminal (Kitty)
  - System Styling (GTK, Qt)
  - And more...

## Getting Started

1. Clone this repository
2. Install [aider](https://github.com/paul-gauthier/aider)
3. Run the symlink setup script
4. Start a conversation with aider about your desired changes

## Example Workflow

Here's a real example of changing the clock format in Waybar:

```
User: "Can you combine the time and date into one view?"
AI: *Proposes changes to waybar config*
*Changes applied and committed with git hash 3a8601b*
User: "Make it show '24HHMM DD AUG YYYY'"
AI: *Iterates through format changes*
*Final changes committed with git hash 298d43f*
```

Each change is:
- Discussed in natural language
- Implemented precisely
- Tested immediately
- Version controlled
- Documented automatically

## Why This Matters

This approach represents a fundamental shift in how we manage system configurations:

1. **Accessibility**: Complex system changes become conversational
2. **Speed**: Changes can be made and tested rapidly
3. **Safety**: Version control provides easy rollback
4. **Documentation**: Changes are automatically documented
5. **Learning**: The system becomes self-documenting through conversation history

## Contributing

Feel free to:
- Fork this repository
- Submit pull requests
- Start conversations about improvements
- Share your own NLIaC experiences

## License

MIT License - See LICENSE file for details
