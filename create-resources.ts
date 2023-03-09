const axios = require('axios');
const { PrismaClient } = require('@prisma/client');

async function createResources() {
  const resources = ['people', 'planets', 'species'];
  const baseUrl = 'https://swapi.dev/api/';

  for (const resource of resources) {
    try {
      const prisma = new PrismaClient();
      const response = await axios.get(`${baseUrl}${resource}/`);

      for (const item of response.data.results) {
        await prisma[resource].create({ data: item });
      }

    } catch (error) {
      console.error(`Error creating resources for ${resource}:`, error);
      process.exit(1);
    }
  }

  console.log('Resources created successfully');
  process.exit();
}

createResources();