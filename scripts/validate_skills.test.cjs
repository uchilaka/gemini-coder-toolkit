const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const SKILLS_DIR = path.join(__dirname, '..', 'skills');
const VALIDATOR_PATH = '/home/linuxbrew/.linuxbrew/Cellar/gemini-cli/0.37.1/libexec/lib/node_modules/@google/gemini-cli/bundle/builtin/skill-creator/scripts/validate_skill.cjs';

console.log('🔍 Starting Skill Validation Suite...\n');

const skills = fs.readdirSync(SKILLS_DIR).filter(file => {
  return fs.statSync(path.join(SKILLS_DIR, file)).isDirectory();
});

let failed = false;

skills.forEach(skill => {
  const skillPath = path.join(SKILLS_DIR, skill);
  console.log(`Testing [${skill}]...`);
  
  try {
    execSync(`node ${VALIDATOR_PATH} ${skillPath}`, { stdio: 'inherit' });
    console.log(`✅ ${skill} passed validation.\n`);
  } catch (error) {
    console.error(`❌ ${skill} failed validation.\n`);
    failed = true;
  }
});

if (failed) {
  console.error('🚨 Validation failed for one or more skills.');
  process.exit(1);
} else {
  console.log('🎉 All skills are valid!');
  process.exit(0);
}
