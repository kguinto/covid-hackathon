const fs = require("fs");
const path = require("path");

const dataFile = fs.readFileSync(path.join(__dirname, "data.json"));

const data = JSON.parse(dataFile)["values"].slice(2);

for (let i in data) {
  const d = data[i];

  const name = d[5].replace(/('|’)/g, "''");
  const address = d[6].replace(/('|’)/g, "''");
  const city = d[8].replace(/('|’)/g, "''");
  const state = d[9].replace(/('|’)/g, "''");
  const instructions = d[10].replace(/('|’)/g, "''");
  const needs = d[11].replace(/('|’)/g, "''");
  const acceptsOpened = d[12].replace(/('|’)/g, "''");
  const latitude = d[13];
  const longitude = d[14];

  const insertOrg = `
INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      '${name}',
      '${address}',
      '${city}',
      '${state}',
      '${instructions}',
      '${acceptsOpened}',
      '${latitude}',
      '${longitude}'
    );`;

  const insertOrgNeeds = needs
    .split(",")
    .map(
      (need) =>
        `
INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('${need.trim()}',
    (SELECT id FROM organizations o
      WHERE o.name = '${name}'
        AND o.latitude = '${latitude}'
        AND o.longitude = '${longitude}'));`
    )
    .join("\n");

  const statements = `
BEGIN;
${insertOrg}
${insertOrgNeeds}

COMMIT;
`;

  fs.writeFileSync(
    path.join(__dirname, "..", "sql", "organizations", `${i}.sql`),
    statements
  );
}
